import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:generador_sql_tablas/global/extension_metodos.dart';
import 'package:generador_sql_tablas/global/relaciones_tablas.dart';
import 'package:collection/collection.dart';
import 'package:postgres/postgres.dart';


class GBL {

  static late PostgreSQLConnection oCnBase;
  static late PostgreSQLConnection oCnEmp;
  static late PostgreSQLConnection oCnImgs;
  static double order = 0;

  static init() async {
    oCnBase = PostgreSQLConnection("192.168.0.51", 5432, "dv00001", username: "postgres", password: "verialvtx");
    await oCnBase.open();
    oCnEmp = PostgreSQLConnection("192.168.0.51", 5432, "dv00001_0001e", username: "postgres", password: "verialvtx");
    await oCnEmp.open();
    oCnImgs = PostgreSQLConnection("192.168.0.51", 5432, "dv00001_0001i", username: "postgres", password: "verialvtx");
    await oCnImgs.open();
    CreaClasesTablaAndDRow oCrear = CreaClasesTablaAndDRow();
    await oCrear.run();
  }
}

class CreaClasesTablaAndDRow {
  late String tablaProper, tablaLower, aliasTabla;
  late List<String> lstAsignacionesCamposSQL = [], lstVarsDeclaraciones = [], lstJoins = [], lstAsignacionesJoins = [];
  late List<String> lstDeclaracionesDRows = [], lstAsignacionesDRows = [], lstJoinsDRows = [];
  late List<String> lstGetsSetsDRowsNew = [], lstJoinsDRowsNew = [];
  late List<DRowRelacionesCamposEtc> lstRelaciones = [];
  Map<String, String> mapImports = {}, mapAlias = {};
  Map<String, List<String>> mapVarsROW = {};
  List<List<dynamic>> lstCols = [];
  List<String> lstTablasServer = [];

  Future<void> run() async {
    RelacionesTablas oRelTab = RelacionesTablas();
    lstRelaciones = oRelTab.init();
    mapAlias = oRelTab.mapAlias;
    await creaClases();
  }

  Future<void> creaClases() async {
    String cSQL = "SELECT table_name FROM INFORMATION_SCHEMA.TABLES WHERE table_type = 'BASE TABLE' AND table_schema = 'public'";
    List<List<dynamic>> lstTablasSQL = await GBL.oCnEmp.query(cSQL);

    for (var row in lstTablasSQL) {
      lstTablasServer.add(row[0]);
    }
    for (String tabla in lstTablasServer) {
      cSQL = "SELECT column_name, data_type, character_maximum_length, numeric_precision_radix, numeric_scale";
      cSQL += " FROM INFORMATION_SCHEMA.COLUMNS";
      cSQL += " WHERE table_name = '$tabla'";
      cSQL += " ORDER BY ordinal_position";
      lstCols = await GBL.oCnEmp.query(cSQL);
      tablaProper = getNameVariable(tabla).proper;
      tablaLower = tabla.toLowerCase();
      initListsAndMaps();
      addItemsFromCols();
      String cFile = getAll();
      await File("c:\\Kotlin\\GestionVerial\\gestion_verial\\lib\\data\\modelos_tablas\\${tablaLower}_base.dart").writeAsString(cFile);
    }
  }

  // verialID = CampoSQL("verialid", "INT", aliasTablaSQL);
  // nombre = CampoSQL("nombre", "varying", aliasTablaSQL, sizeSQL: 100);
  // idCategoria = CampoSQL("id_categoria", "INT", aliasTablaSQL);
  // cat = CategoriasSQL(join: "LEFT JOIN categorias cat ON a.id_categoria = cat.verialid");

  void initListsAndMaps() {
    lstAsignacionesCamposSQL = [];
    lstVarsDeclaraciones = [];
    lstJoins = [];
    mapImports = {};

    // DROW
    lstDeclaracionesDRows = [];
    lstAsignacionesDRows = [];
    lstJoinsDRows = [];
    // DROWNEW
    lstGetsSetsDRowsNew = [];
    lstJoinsDRowsNew = [];
    lstAsignacionesJoins = [];
  }

  // ? Desde cada Campo en DB se componen la mayor parte de los elementos de las clases
  // ? despues "getAll" se encarga de ordenarlos y crear losque faltan
  void addItemsFromCols() {
    String campo, type;
    lstAsignacionesCamposSQL.add("all = CampoSQL('*', '', oTablaMain: this);");
    for (List<dynamic> row in lstCols) {
      campo = row[0];
      type = row[1];
      String cVar = getNameVariable(campo);
      String cType = getTipoSQL(type, row[2] ?? 0, row[3] ?? 0, row[4] ?? 0);
      String cPlantilla = '$cVar = CampoSQL("$campo", "$cType", oTablaMain: this);';
      lstAsignacionesCamposSQL.add(cPlantilla);
      lstVarsDeclaraciones.add(cVar);

      // DRows
      String cTipoDart = getTipoDart(type);
      cPlantilla = "late $cTipoDart $cVar;\n";
      lstDeclaracionesDRows.add(cPlantilla);
      String cDef = getDefectoDart(type);
      if (cTipoDart == "double") {
        cPlantilla = '$cVar = double.tryParse(map["$campo"].toString()) ?? 0;\n';
      } else if (cDef == "") {
        cPlantilla = '$cVar = map["$campo"];\n';
      } else {
        cPlantilla = '$cVar = map["$campo"] ?? $cDef;\n';
      }
      lstAsignacionesDRows.add(cPlantilla);

      // ? Faltan JOINS TODO

      // DRowsNew
      if (campo == "verialid") {
        cPlantilla = "int get $cVar => map['$campo'] ?? 0;\n";
        lstGetsSetsDRowsNew.add(cPlantilla);
      } else {
        if (cDef == "") {
          cPlantilla = "$cTipoDart get $cVar => map['$campo'];\n";
        } else {
          cPlantilla = "$cTipoDart get $cVar => map['$campo'] ?? $cDef;\n";
        }
        lstGetsSetsDRowsNew.add(cPlantilla);
        cPlantilla = "set $cVar($cTipoDart valor) => map['$campo'] = valor;\n";
        lstGetsSetsDRowsNew.add(cPlantilla);
      }

    }
  }

  // ? Compone las clases necesarias para cada tabla
  String getAll() {
    String cDatos = "";
    String tabla =  tablaLower.replaceAll("_", "");
    DRowRelacionesCamposEtc? row = lstRelaciones.firstWhereOrNull((it) => it.tablaJoin.toLowerCase() == tabla);
    if (row == null) {
      aliasTabla = mapAlias[tablaLower] ?? tablaLower.substring(0, 3);
    } else {
      aliasTabla = row.alias;
    }
    try {
      cDatos += "class ${tablaProper}SQL extends TablaSQL {\n";
      cDatos += getDeclaracionVars();
      cDatos += getDeclaracionJoinsFromRelaciones();
      cDatos += getConstructorClaseTabla();
      cDatos = getImports() + cDatos;
      cDatos += getDRows();
      cDatos += getDRowsNew();
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return cDatos;
  }

  String getConstructorClaseTabla() {
    String cCad = "${tablaProper}SQL({String cJoinSentence = '', String cAliasJoin = '', String cCampoJoin = '', TablaSQL? oTablaSelectJoin}) {\n";
    cCad += "nombreSQL = '$tablaLower';\n";
    cCad += "aliasSQL = '$aliasTabla';\n";
    cCad += "campoJoin = cCampoJoin;\n";
    cCad += "aliasSelectJoinSQL = cAliasJoin;\n";
    cCad += "joinSentence = cJoinSentence;\n";
    cCad += "oTablaJoin = oTablaSelectJoin;\n";
    cCad += lstAsignacionesCamposSQL.join("\n");
    cCad += "\n}\n}\n\n";
    return cCad;
  }

  String getDeclaracionVars() {
    String cFila = "late CampoSQL ", cTodo = "";
    int x = 1;
    for (String campo in lstVarsDeclaraciones) {
      cFila += "$campo${(x == 5) ? ";\n" : ", "}";
      x++;
      if (x == 6) {
        cTodo += "${cFila.trim()}\n";
        cFila = "late CampoSQL ";
        x = 1;
      }
    }
    if (cFila.length > 15) {
      if (cFila.trim().endsWith(",")) {
        cFila = cFila.replaceFirst(",", ";", cFila.length - 2);
      }
      cTodo += "${cFila.trim()}\n";
    }
    cTodo = "late CampoSQL all;\n$cTodo";
    return "$cTodo\n";
  }



  String getDeclaracionJoinsFromRelaciones() {
    String cDeclaraciones = "";
    for (var campo in lstJoins) {
      DRowRelacionesCamposEtc? rowRel = lstRelaciones.firstWhereOrNull((it) => it.tablaOrigen == tablaLower && it.campoID == campo);
      if (rowRel == null) {
        continue;
      }

      if ( rowRel.tablaJoin.toLowerCase().contains("_g") ||  rowRel.tablaJoin.toLowerCase().contains("_i")) {
        continue;
      }
      String cJoinCamelCase = rowRel.tablaJoin.replaceAll("_", "");
      String varTablaSQL = "${cJoinCamelCase}SQL";

      if (cJoinCamelCase.toLowerCase() != tablaLower) {
        String cImport = lstTablasServer.firstWhereOrNull((it) => it.replaceAll("_", "") == cJoinCamelCase.toLowerCase()) ?? "";
        if (cImport != "") {
          mapImports[cJoinCamelCase] = "import '${cImport}_base.dart';";
        } else {
          String cImport = lstTablasServer.firstWhereOrNull((it) => it == cJoinCamelCase.toLowerCase()) ?? "";
          if (cImport != "") {
            mapImports[cJoinCamelCase] = "import '${cImport}_base.dart';";
          } else {
            print(tablaLower);
          }
        }
      }

      String alias = rowRel.alias;
      cDeclaraciones += "$varTablaSQL get $alias => ";
      if (rowRel.joins == "") {
        // String cLeftJoin = "LEFT JOIN ${rowRel.tablaJoin} $alias ON $aliasTabla.${rowRel.campoID} = $alias.verialid";
        cDeclaraciones += "$varTablaSQL(cCampoJoin: '${rowRel.campoID}', cAliasJoin: '$alias', oTablaSelectJoin: this);\n";
      } else {
        cDeclaraciones += "$varTablaSQL(cJoinSentence: '${rowRel.joins}', cAliasJoin: '$alias', oTablaSelectJoin: this);\n";
      }
      // DRowNew
      String cPlantilla;
      String cDRow = "DRow${cJoinCamelCase}Mapping";
      cPlantilla = " late $cDRow? row${alias.proper} = $cDRow.join(mapParam!['$cJoinCamelCase']);\n";
      lstJoinsDRowsNew.add(cPlantilla);
    }
    return cDeclaraciones;
  }


  String getImports() {
    String cCad = "import '../abstract/entidades_sql.dart';\n";
    cCad += "import '../../global/utils.dart';\n";
    mapImports.forEach((key, value) {
      cCad += "$value\n";
    });
    return "$cCad\n\n";
  }

  String getDRows() {
    String cCad = "class DRow$tablaProper {\n";
    cCad += lstDeclaracionesDRows.join("");
    cCad += "DRow$tablaProper.fromMap(Map<String, dynamic> mapParam) {\n";
    cCad += "try {\n";
    cCad += 'Map<String, dynamic> map = mapParam["$tablaLower"];\n';
    cCad += lstAsignacionesDRows.join("");
    cCad += '} catch (e, stack) {\n';
    cCad += 'Utils.printError(e, traza: stack, mapInfo: {"Proceso": "DRowArticulo.fromMap"});\n}\n}\n';
    return "$cCad}\n\n";
  }

  String getDRowsNew() {
    String cClase = "DRow${tablaProper}Mapping";
    String cCad = "class $cClase extends DRowEntidad {\n";
    cCad += "$cClase.select(super.mapParam, super.cTabla) : super.select();\n";
    cCad += "$cClase.join(super.mapParamJoin) : super.join();\n\n";
    cCad += lstGetsSetsDRowsNew.join("");
    cCad += lstJoinsDRowsNew.join("");
    return "$cCad}\n\n";
  }

  // ? Transformacion del nombre del campo en DB a Variable
  String getNameVariable(String campo) {
    String cFinal = "";
    if (campo.startsWith("id_")) {
      lstJoins.add(campo);
    }
    List<String> lstPartes = campo.split("_");
    for(String it in lstPartes) {
      cFinal += it.proper;
    }
    cFinal = cFinal.substring(0,1).toLowerCase() + cFinal.substring(1);
    if (cFinal == "final") cFinal = "finalStr"; //? Por ser palabra reservada
    return cFinal;
  }

  // ? tipos para sql [PENDIENTE] TODO
  String getTipoSQL(String type, int numMaxStr, int radix, int scale) {
    if (type.contains("varying")) return 'C$numMaxStr';
    if (type == "smallint") return 'I2';
    if (type == "integer") return 'I4';
    if (type == "bigint") return 'I8';
    if (type == "date") return 'D';
    if (type.contains("timestamp")) return 'DT';
    if (type == "real") return 'F4';
    if (type == "double precision") return 'F8';
    if (type == "numeric" || type == "decimal") return 'N($radix,$scale)';
    return type;
  }

  // ? PAra DRow
  String getTipoDart(String type) {
    if (["smallint", "integer"].contains(type)) {
      return 'int';
    }
    if (type.contains("varying") || type.contains("text")) {
      return 'String';
    }

    // "double precision" ...
    if (type.contains("double") || type.contains("numeric")) {
      return 'double';
    }

    if (type.contains("timestamp") || type.contains("date") || type.contains("time")) {
      return 'DateTime?';
    }

    return type;
  }

  String getDefectoDart(String type) {
    if (["smallint", "integer"].contains(type)) {
      return "0";
    }
    if (type.contains("varying") || type.contains("text")) {
      return "''";
    }

    // "double precision" ...
    if (type.contains("double") || type.contains("numeric")) {
      return "0";
    }

    if (type.contains("timestamp") || type.contains("date") || type.contains("time")) {
      return "";
    }

    return "";
  }
}
