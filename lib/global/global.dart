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
  late String tablaProper, tablaLower;
  late List<String> lstJoinsTablas = [] ;
  late List<DRowRelacionesCamposEtc> lstRelaciones = [];
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

    for (String tabla in lstTablasServer) {
      cSQL = "SELECT column_name, data_type, character_maximum_length, numeric_precision_radix, numeric_scale";
      cSQL += " FROM INFORMATION_SCHEMA.COLUMNS";
      cSQL += " WHERE table_name = '$tabla'";
      cSQL += " ORDER BY ordinal_position";
      lstCols = await GBL.oCnEmp.query(cSQL);
      tablaProper = Utils.getNameVariable(tabla).proper;
      tablaLower = tabla;
      String cFile = getAllNew();
      await File("c:\\Kotlin\\GestionVerial\\gestion_verial\\lib\\data\\modelos_tablas\\${tablaLower}_base.dart").writeAsString(cFile);
    }
  }
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
