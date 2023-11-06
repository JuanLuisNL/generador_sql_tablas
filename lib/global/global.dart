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
  late List<String> lstJoinsTablas = [] ;
  late List<DRowRelacionesCamposEtc> lstRelaciones = [];
  List<List<dynamic>> lstCols = [];
  Map<String, String> mapTablasServer = {};
  late RelacionesTablas oRelTab;

  Future<void> run() async {
    await creaClases(1);
  }

  Future<void> creaClases(int tipo) async {
    // PostgreSQLConnection oCn;
    // if (tipo == 1) {
    //   oCn = GBL.oCnEmp;
    // } else  if (tipo == 2) {
    //   oCn = GBL.oCnBase;
    // } else {
    //   oCn = GBL.oCnImgs;
    // }
    oRelTab = RelacionesTablas();
    lstRelaciones = oRelTab.init();

    String cSQL = "SELECT table_name, table_schema FROM INFORMATION_SCHEMA.TABLES WHERE table_type = 'BASE TABLE' AND (table_schema = 'public' OR table_schema = 'emp0001')";
    List<List<dynamic>> lstTablasSQL = await GBL.oCn.query(cSQL);

    for (var row in lstTablasSQL) {
      mapTablasServer[row.first] = row.last;
    }

    mapTablasServer.forEach((key, value) async {
      String tabla = key;
      cSQL = "SELECT column_name, data_type, character_maximum_length, numeric_precision_radix, numeric_scale";
      cSQL += " FROM INFORMATION_SCHEMA.COLUMNS";
      cSQL += " WHERE table_name = '$tabla' AND table_schema = '$value'";
      cSQL += " ORDER BY ordinal_position";
      lstCols = await GBL.oCn.query(cSQL);
      tablaProper = Utils.getNameVariable(tabla).proper;
      tablaLower = tabla;
      String cFile = getAllNew(value);
      String cNexo = (value == "public") ? "grp" : "emp";
      await File("c:\\Kotlin\\GestionVerial\\gestion_verial\\lib\\data\\modelos_tablas\\${tablaLower}_$cNexo.dart").writeAsString(cFile);
    });
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

      GenerarTablaSQL oGenTblSQL = GenerarTablaSQL(schema, tablaLower, tablaProper, aliasTabla, lstRelaciones, lstCols, mapTablasServer);
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

  // ? Transformacion del nombre del campo en DB a Variable
  String getNameVariable(String campo) {
    if (campo.startsWith("id_")) {
      lstJoinsTablas.add(campo);
    }
    return Utils.getNameVariable(campo);
  }

  // ? tipos para sql [PENDIENTE] TODO



}
