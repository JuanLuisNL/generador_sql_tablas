import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:generador_sql_tablas/global/drow_json.dart';
import 'package:generador_sql_tablas/global/drow_mapping.dart';
import 'package:generador_sql_tablas/global/extension_metodos.dart';
import 'package:generador_sql_tablas/global/maps_excepciones.dart';
import 'package:generador_sql_tablas/global/relaciones_tablas.dart';
import 'package:generador_sql_tablas/global/tabla_sql.dart';
import 'package:generador_sql_tablas/global/utils.dart';
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
  late List<String> lstCamposSQLVars = [], lstGetsCamposSQL = [];
  late List<String> lstGetsTblJoins = [];
  late Map<String, List<String>> mapVarsTblJoins = {};

  late List<String> lstAsignacionesCamposSQL = [], lstJoinsTablas = [] ;
  late List<String> lstAsignacionesDRows = [], lstJoinsDRows = [];
  late List<String> lstGetsSetsDRowsNew = [], lstJoinsDRowsNew = [];
  late List<DRowRelacionesCamposEtc> lstRelaciones = [];
  Map<String, String> mapImports = {}, mapExcepCampos = {};
  Map<String, List<String>> mapVarsROW = {}, mapExcepDRow = {}, mapExcepVarsTbl = {}, mapExcepJoinsTbl = {}, mapExcepImportsTbl = {};
  List<List<dynamic>> lstCols = [];
  List<String> lstTablasServer = [];

  Future<void> run() async {
    RelacionesTablas oRelTab = RelacionesTablas();
    lstRelaciones = oRelTab.init();
    await creaClases();
  }

  Future<void> creaClases() async {

    String cSQL = "SELECT table_name FROM INFORMATION_SCHEMA.TABLES WHERE table_type = 'BASE TABLE' AND table_schema = 'public'";
    List<List<dynamic>> lstTablasSQL = await GBL.oCnEmp.query(cSQL);

    for (var row in lstTablasSQL) {
      lstTablasServer.add(row[0]);
    }
    mapExcepVarsTbl = MapExcepciones.initTablaVarsExcepciones();
    mapExcepJoinsTbl = MapExcepciones.initTablaJoinsExcepciones();
    mapExcepImportsTbl = MapExcepciones.initTablaImportsExcepciones();
    mapExcepCampos = MapExcepciones.initMapCamposExcepciones();
    mapExcepDRow = MapExcepciones.initMapDRowsExcepciones();

    for (String tabla in lstTablasServer) {
      cSQL = "SELECT column_name, data_type, character_maximum_length, numeric_precision_radix, numeric_scale";
      cSQL += " FROM INFORMATION_SCHEMA.COLUMNS";
      cSQL += " WHERE table_name = '$tabla'";
      cSQL += " ORDER BY ordinal_position";
      lstCols = await GBL.oCnEmp.query(cSQL);
      tablaProper = getNameVariable(tabla).proper;
      tablaLower = tabla;
      // initListsAndMaps();
      // addItemsFromCols();
      String cFile = getAllNew();
      await File("c:\\Kotlin\\GestionVerial\\gestion_verial\\lib\\data\\modelos_tablas\\${tablaLower}_base.dart").writeAsString(cFile);
    }
  }

  // verialID = CampoSQL("verialid", "INT", aliasTablaSQL);
  // nombre = CampoSQL("nombre", "varying", aliasTablaSQL, sizeSQL: 100);
  // idCategoria = CampoSQL("id_categoria", "INT", aliasTablaSQL);
  // cat = CategoriasSQL(join: "LEFT JOIN categorias cat ON a.id_categoria = cat.verialid");

  // void initListsAndMaps() {
  //   lstCamposSQLVars = [];
  //   lstGetsCamposSQL = [];
  //   lstGetsTblJoins = [];
  //
  //   lstAsignacionesCamposSQL = [];
  //   lstJoinsTablas = [];
  //   mapImports = {};
  //   mapVarsTblJoins = {};
  //   // mapCamposExc, mapDRowExc, mapVarsTblExc, mapJoinsTblExc  NO se vacia
  //
  //   // DROW
  //   mapVarsROW = {};
  //   lstAsignacionesDRows = [];
  //   lstJoinsDRows = [];
  //   // DROWNEW
  //   lstGetsSetsDRowsNew = [];
  //   lstJoinsDRowsNew = [];
  // }



  // ? Desde cada Campo en DB se componen la mayor parte de los elementos de las clases
  // ? despues "getAll" se encarga de ordenarlos y crear losque faltan
  // void addItemsFromCols() {
  //   String campo, type;
  //   for (List<dynamic> row in lstCols) {
  //     campo = row[0];
  //     type = row[1];
  //     String cVar = getNameVariable(campo);
  //     String cType = Utils.getTipoSQL(type, row[2] ?? 0, row[3] ?? 0, row[4] ?? 0);
  //     String cPlantilla = '$cVar = CampoSQL("$campo", "$cType", oTablaMain: this);';
  //     String cPlantillaGet = 'CampoSQL get $cVar => _$cVar ?? CampoSQL("$campo", "$cType", this);\n';
  //
  //     lstAsignacionesCamposSQL.add(cPlantilla);
  //
  //     lstCamposSQLVars.add("_$cVar");
  //     lstGetsCamposSQL.add(cPlantillaGet);
  //
  //     // DRows
  //     String cTipoDart = Utils.getTipoDart(type);
  //     // cPlantilla = "late $cTipoDart $cVar;\n";
  //     // lstDeclaracionesDRows.add(cPlantilla);
  //
  //     String key = "late $cTipoDart";
  //     if (mapVarsROW[key] == null) {
  //       mapVarsROW[key] = [cVar];
  //     } else {
  //       List<String> lstTmp =  mapVarsROW[key]!;
  //       lstTmp.add(cVar);
  //       mapVarsROW[key] = lstTmp;
  //     }
  //
  //
  //
  //     String cDef = Utils.getDefectoDart(type);
  //     if (cTipoDart == "double") {
  //       cPlantilla = '$cVar = double.tryParse(map["$campo"].toString()) ?? 0;\n';
  //     } else if (cDef == "") {
  //       cPlantilla = '$cVar = map["$campo"];\n';
  //     } else {
  //       cPlantilla = '$cVar = map["$campo"] ?? $cDef;\n';
  //     }
  //     lstAsignacionesDRows.add(cPlantilla);
  //
  //     // DRowsNew
  //     if (campo == "verialid") {
  //       cPlantilla = "int get $cVar => map['$campo'] ?? 0;\n";
  //       lstGetsSetsDRowsNew.add(cPlantilla);
  //     } else {
  //       if (cDef == "") {
  //         cPlantilla = "$cTipoDart get $cVar => map['$campo'];\n";
  //       } else {
  //         cPlantilla = "$cTipoDart get $cVar => map['$campo'] ?? $cDef;\n";
  //       }
  //       lstGetsSetsDRowsNew.add(cPlantilla);
  //       cPlantilla = "set $cVar($cTipoDart valor) => map['$campo'] = valor;\n";
  //       lstGetsSetsDRowsNew.add(cPlantilla);
  //     }
  //   }
  // }

  String getAllNew() {
    String cDatos = "";
    try {
      GenerarTablaSQL oGenTblSQL = GenerarTablaSQL(tablaLower, tablaProper, lstRelaciones, lstCols, lstTablasServer);
      cDatos = oGenTblSQL.create();

      GenerarDRowJson oGenDRowJson = GenerarDRowJson(tablaLower, tablaProper, lstRelaciones, lstCols);
      cDatos += oGenDRowJson.create();

      GenerarDRowMapping oGenDRowMapping = GenerarDRowMapping(tablaLower, tablaProper, lstRelaciones, lstCols);
      cDatos += oGenDRowMapping.create();




    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return cDatos;
  }


  // ? Compone las clases necesarias para cada tabla
  // String getAll() {
  //   String cDatos = "";
  //   DRowRelacionesCamposEtc? row = lstRelaciones.firstWhereOrNull((it) => it.tablaJoin == tablaLower);
  //   if (row == null) {
  //     aliasTabla = tablaLower.substring(0, 3);
  //   } else {
  //     aliasTabla = row.alias;
  //   }
  //   try {
  //     cDatos = getConstructorClaseTabla();
  //     cDatos = getImports() + cDatos;
  //     cDatos += getDRows();
  //     cDatos += getDRowsNew();
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //   }
  //   return cDatos;
  // }

  // String getConstructorClaseTabla() {
  //   /// JOINS CON OTRAS TABLAS
  //   getDeclaracionJoinsFromRelaciones();
  //
  //   /// CLASE
  //   String cCad = "class ${tablaProper}SQL extends TablaSQL {\n";
  //
  //   /// VARIABLES
  //   cCad += Utils.getDeclaracionVars("CampoSQL?", lstCamposSQLVars);
  //   cCad += "/// Joins Vars\n";
  //   mapVarsTblJoins.forEach((key, value) {
  //     cCad += Utils.getDeclaracionVars(key, value);
  //   });
  //   /// Excepciones vars joins
  //   if (mapExcepVarsTbl[tablaLower] != null) {
  //   for (var it in mapExcepVarsTbl[tablaLower]!) {
  //     cCad += it;
  //   }
  //   }
  //
  //
  //   cCad += "/// CamposSQL Gets\n";
  //   cCad += "CampoSQL get all => CampoSQL('*', '', this);\n";
  //   cCad += lstGetsCamposSQL.join();
  //   cCad += "/// JOINS Gets\n";
  //   cCad += lstGetsTblJoins.join();
  //   /// Excepciones Get joins
  //   if (mapExcepJoinsTbl[tablaLower] != null) {
  //     for (var it in mapExcepJoinsTbl[tablaLower]!) {
  //       cCad += it;
  //     }
  //   }
  //
  //   /// CONSTRUCTOR JOINS
  //   cCad += "\n${tablaProper}SQL.joins(String cCampoJoin, String cAliasJoin, TablaSQL? oTablaSelectJoin, {String joinManual = ''}) {\n";
  //   cCad += "initCampos();\n";
  //   cCad += "campoJoin = cCampoJoin;\n";
  //   cCad += "aliasJoin = cAliasJoin;\n";
  //   //cCad += "joinSentence = cJoinSentence;\n";
  //   cCad += "oTablaJoin = oTablaSelectJoin;\n}\n\n";
  //
  //   /// CONSTRUCTOR
  //   cCad += "${tablaProper}SQL() {\n initCampos();\n}\n\n";
  //
  //   /// INITCAMPOS
  //   cCad += "void initCampos() {\n";
  //   cCad += "nombreSQL = '$tablaLower';\n";
  //   cCad += "aliasSQL = '$aliasTabla';\n";
  //   // cCad += lstAsignacionesCamposSQL.join("\n");
  //   cCad += "\n}\n}\n\n";
  //   return cCad;
  // }



  // void getDeclaracionJoinsFromRelaciones() {
  //   for (var campo in lstJoinsTablas) {
  //     DRowRelacionesCamposEtc? rowRel = lstRelaciones.firstWhereOrNull((it) => it.tablaOrigen == tablaLower && it.campoID == campo);
  //     if (rowRel == null) {
  //       continue;
  //     }
  //
  //     if (rowRel.tablaJoin.toLowerCase().contains("_g") || rowRel.tablaJoin.toLowerCase().contains("_i")) {
  //       continue;
  //     }
  //     String cTablaJoin = rowRel.tablaJoin;
  //
  //     if (cTablaJoin != tablaLower) {
  //       String cImport = lstTablasServer.firstWhereOrNull((it) => it == cTablaJoin) ?? "";
  //       if (cImport != tablaLower) {
  //         if (cImport != "") {
  //           mapImports[cTablaJoin] = "import '${cImport}_base.dart';";
  //         } else {
  //           // hay alguna tabla original con guiones
  //           String cImport = lstTablasServer.firstWhereOrNull((it) => it == cTablaJoin) ?? "";
  //           if (cImport != "") {
  //             mapImports[cTablaJoin] = "import '${cImport}_base.dart';";
  //           } else {
  //             if (kDebugMode) {
  //               print(tablaLower);
  //             }
  //           }
  //         }
  //       }
  //     }
  //     // ? EJEMPLO
  //     /// ArbolesSQL? _arbCat;
  //     /// ArbolesSQL get arb => _arb ?? ArbolesSQL.joins('id_padre', 'arb', this);
  //     String alias = rowRel.alias;
  //     if (mapExcepCampos[rowRel.campoID] != null) {
  //       alias = mapExcepCampos[rowRel.campoID]!;
  //     } else {
  //       alias = alias + getNameVariable(rowRel.campoID.substring(3)).proper; // ? provisional, se irá haciendo poco a poco
  //     }
  //
  //     String tipoDatoTabla = "${getNameVariable(cTablaJoin).proper}SQL";
  //
  //     // Map de declaraciones de Joins para luego dividir por filas
  //     String key = "$tipoDatoTabla?";
  //     if (mapVarsTblJoins[key] == null) {
  //       mapVarsTblJoins[key] = ["_$alias"];
  //     } else {
  //       List<String> lstTmp =  mapVarsTblJoins[key]!;
  //       lstTmp.add("_$alias");
  //       mapVarsTblJoins[key] = lstTmp;
  //     }
  //
  //     String cTablaJoinGet = "$tipoDatoTabla get $alias => _$alias ?? $tipoDatoTabla.joins('${rowRel.campoID}', '$alias', this);\n";
  //     lstGetsTblJoins.add(cTablaJoinGet);
  //
  //     /// TODO Ver los joins manuales. habrá que ver cuales son realmente
  //
  //     // DRowNew
  //     String cPlantilla;
  //     String cDRow = "DRow${getNameVariable(cTablaJoin).proper}Mapping";
  //     cPlantilla = " late $cDRow? row${alias.proper} = $cDRow.join(mapParam!['${cTablaJoin.proper}']);\n";
  //     lstJoinsDRowsNew.add(cPlantilla);
  //   }
  //   if (mapExcepDRow[tablaLower] != null) {
  //     lstJoinsDRowsNew.add(mapExcepDRow[tablaLower]!.join());
  //   }
  // }

  // String getImports() {
  //   String cCad = "import '../abstract/entidades_sql.dart';\n";
  //   cCad += "import '../../global/utils.dart';\n";
  //
  //   mapImports.forEach((key, value) {
  //     cCad += "$value\n";
  //   });
  //   if (mapExcepImportsTbl[tablaLower] != null) {
  //     for(var it in mapExcepImportsTbl[tablaLower]!) {
  //       if (!mapImports.values.contains(it)) {
  //         cCad += it;
  //       }
  //     }
  //   }
  //   return "$cCad\n\n";
  // }

  // String getDRows() {
  //   String cCad = "class DRow$tablaProper {\n";
  //   mapVarsROW.forEach((key, value) {
  //     cCad += Utils.getDeclaracionVars(key, value);
  //   });
  //
  //   cCad += "DRow$tablaProper.fromMap(Map<String, dynamic> mapParam) {\n";
  //   cCad += "try {\n";
  //   cCad += 'Map<String, dynamic> map = mapParam["$tablaLower"];\n';
  //   cCad += lstAsignacionesDRows.join("");
  //   cCad += '} catch (e, stack) {\n';
  //   cCad += 'Utils.printError(e, traza: stack, mapInfo: {"Proceso": "DRowArticulo.fromMap"});\n}\n}\n';
  //   return "$cCad}\n\n";
  // }

  // String getDRowsNew() {
  //   String cClase = "DRow${tablaProper}Mapping";
  //   String cCad = "class $cClase extends DRowMapping {\n";
  //   cCad += "$cClase.select(super.mapParam, super.cTabla) : super.select();\n";
  //   cCad += "$cClase.join(super.mapParamJoin) : super.join();\n\n";
  //   cCad += lstGetsSetsDRowsNew.join("");
  //   cCad += lstJoinsDRowsNew.join("");
  //   return "$cCad}\n\n";
  // }

  // ? Transformacion del nombre del campo en DB a Variable
  String getNameVariable(String campo) {
    String cFinal = "";
    if (campo.startsWith("id_")) {
      lstJoinsTablas.add(campo);
    }
    return Utils.getNameVariable(campo);
  }

  // ? tipos para sql [PENDIENTE] TODO



}
