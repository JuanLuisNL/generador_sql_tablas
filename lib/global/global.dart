import 'dart:io';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:generador_sql_tablas/global/drow_json.dart';
import 'package:generador_sql_tablas/global/drow_mapping.dart';
import 'package:generador_sql_tablas/global/extension_metodos.dart';
import 'package:generador_sql_tablas/global/relaciones_tablas.dart';
import 'package:generador_sql_tablas/global/tabla_sql.dart';
import 'package:generador_sql_tablas/global/utils.dart';
import 'package:postgres/postgres.dart';

class GBL {
  // static late PostgreSQLConnection oCnBase;
  // static late PostgreSQLConnection oCnEmp;
  // static late PostgreSQLConnection oCnImgs;
  static late PostgreSQLConnection oCn;
  static double order = 0;
  static List<TablasSQL> lstTablas = [];

  static init() async {
    // oCnBase = PostgreSQLConnection("192.168.0.51", 5432, "dv00001", username: "postgres", password: "verialvtx");
    // await oCnBase.open();
    // oCnEmp = PostgreSQLConnection("192.168.0.51", 5432, "dv00001_0001e", username: "postgres", password: "verialvtx");
    // await oCnEmp.open();
    // oCnImgs = PostgreSQLConnection("192.168.0.51", 5432, "dv00001_0001i", username: "postgres", password: "verialvtx");
    // await oCnImgs.open();
    oCn = PostgreSQLConnection("192.168.0.51", 5432, "GV00001", username: "postgres", password: "verialvtx");
    await oCn.open();
    CreaClasesTablaAndDRow oCrear = CreaClasesTablaAndDRow();
    await oCrear.run();
  }
}

class CreaClasesTablaAndDRow {
  late String tablaProper, tablaLower;
  late List<String> lstJoinsTablas = [];

  late List<DRowRelacionesCamposEtc> lstRelaciones = [];
  List<DRowColsTabla> lstCols = [];
  late RelacionesTablas oRelTab;

  Future<void> run() async {
    await creaClases();
  }

  Future<void> creaClases() async {
    oRelTab = RelacionesTablas();
    lstRelaciones = oRelTab.init();
    GBL.lstTablas = [];
    String cSQL =
        ''' SELECT table_name, table_schema 
          FROM INFORMATION_SCHEMA.TABLES 
          WHERE table_type = 'BASE TABLE' AND (table_schema = 'public' OR table_schema = 'emp0001') 
          ORDER BY table_schema, table_name''';
    List<List<dynamic>> lstTablasSQL = await GBL.oCn.query(cSQL);

    for (var row in lstTablasSQL) {
      String cKey = row.first + "_" + row.last;
      GBL.lstTablas.add(TablasSQL(cKey, row.first, row.last));
    }
    for (var row in GBL.lstTablas) {
      String tabla = row.tablaName;
      cSQL = "SELECT column_name, data_type, character_maximum_length, numeric_precision_radix, numeric_scale, udt_name";
      cSQL += " FROM INFORMATION_SCHEMA.COLUMNS";
      cSQL += " WHERE table_name = '$tabla' AND table_schema = '${row.schema}'";
      cSQL += " ORDER BY ordinal_position";
      PostgreSQLResult result = await GBL.oCn.query(cSQL);
      lstCols = [];
      for (List<dynamic> row in result) {
        lstCols.add(DRowColsTabla(row[0], row[1], row[2], row[3], row[4], row[5]));
        DRowColsTabla rowLast = lstCols.last;
        if (rowLast.tipo == "ARRAY" && rowLast.udtName == "_int4") {
          rowLast.tipo = "ARRAY_INT";
        }
        if (rowLast.tipo == "ARRAY" && rowLast.udtName == "_text") {
          rowLast.tipo = "ARRAY_TEXT";
        }
        if (rowLast.tipo == "ARRAY" && rowLast.udtName == "_jsonb") {
          rowLast.tipo = "ARRAY_JSONB";
        }
        if (rowLast.tipo == "ARRAY" && rowLast.udtName == "_json") {
          rowLast.tipo = "ARRAY_JSON";
        }
        if (rowLast.tipo == "bytea") {
          rowLast.tipo = "Uint8List";
        }
      }
      tablaProper = Utils.getNameVariable(tabla).proper;
      tablaLower = tabla;
      String cFile = getAllNew(row.schema);
      String cNexo = (row.schema == "public") ? "grp" : "emp";
      await File("c:\\Kotlin\\GestionVerial\\gestion_verial\\lib\\data\\modelos_tablas\\${tablaLower}_$cNexo.dart").writeAsString(cFile);
    }
  }

  String getAllNew(String schema) {
    String cDatos = "";
    try {
      String aliasTabla = "";
      DRowRelacionesCamposEtc? row = lstRelaciones.firstWhereOrNull((it) => it.tablaJoin == tablaLower);
      if (row == null) {
        if (oRelTab.mapAlias[tablaLower] != null) {
          aliasTabla = oRelTab.mapAlias[tablaLower]!;
        } else {
          aliasTabla = tablaLower;
        }
      } else {
        aliasTabla = row.alias;
      }

      GenerarTablaSQL oGenTblSQL = GenerarTablaSQL(schema, tablaLower, tablaProper, aliasTabla, lstRelaciones, lstCols);
      cDatos = oGenTblSQL.create();

      GenerarDRowJson oGenDRowJson = GenerarDRowJson(tablaLower, tablaProper, lstRelaciones, lstCols);
      cDatos += oGenDRowJson.create();

      GenerarDRowMapping oGenDRowMapping = GenerarDRowMapping(tablaLower, tablaProper, lstRelaciones, lstCols, aliasTabla);
      cDatos += oGenDRowMapping.create();
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return cDatos;
  }

// ? Transformacion del nombre del campo en DB a Variable
  String getNameVariable(String campo) {
    if (campo.startsWith("id_")) {
      lstJoinsTablas.add(campo);
    }
    return Utils.getNameVariable(campo);
  }

// ? tipos para sql [PENDIENTE] TODO
}

class TablasSQL {
  TablasSQL(this.clave, this.tablaName, this.schema);

  late final String clave;
  late final String tablaName;
  late final String schema;
}


class DRowColsTabla {
  DRowColsTabla(this.campo, this.tipo, this.longitud, this.precision, this.scale, this.udtName);

  late String campo;
  late String tipo;
  late int? longitud;
  late int? precision;
  late int? scale;
  late String udtName;
}