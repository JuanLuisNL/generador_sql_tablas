import 'package:collection/collection.dart';
import 'package:generador_sql_tablas/global/extension_metodos.dart';
import 'package:generador_sql_tablas/global/relaciones_tablas.dart';
import 'package:generador_sql_tablas/global/utils.dart';

import 'maps_excepciones.dart';

class GenerarDRowJson {
  GenerarDRowJson(this.tablaLower, this.tablaProper, this.lstRelaciones, this.lstCols);
  final String tablaLower, tablaProper;
  final List<DRowRelacionesCamposEtc> lstRelaciones;
  final List<List<dynamic>> lstCols;

  Map<String, List<String>> mapVarsROW = {};
  List<String> lstAsignacionesDRows = [], lstJoinsDRows = [], lstJoinsTablas = [], lstVarsRows = [];


  String create() {
    initListsAndMaps();
    addItemsFromCols();


    return generarClaseDRowJson();
  }

  String generarClaseDRowJson() {
    String cNexo = (Utils.isClaseBase(tablaLower)) ? "Part" : "";
    String cCad = "class DRow$tablaProper$cNexo {\n";
    mapVarsROW.forEach((key, value) {
      cCad += Utils.getDeclaracionVars(key, value);
    });
    cCad += "\n";
    cCad += lstVarsRows.join("");
    cCad += "\n";

    cCad += "DRow$tablaProper$cNexo.fromMap(Map<String, dynamic>? map) {\n";
    cCad += "if (map == null) return;\n";
    cCad += "try {\n";
    cCad += lstAsignacionesDRows.join("");
    cCad += "\n\n";
    cCad += lstJoinsTablas.join("");
    cCad += '} catch (e, stack) {\n';
    cCad += 'Utils.printError(e, stack, mapInfo: {"Proceso": "DRowArticulo.fromMap"});\n}\n}\n';
    return "$cCad}\n\n";
  }

  void initListsAndMaps() {
    mapVarsROW = {};
    lstAsignacionesDRows = [];
    lstJoinsDRows = [];
    lstJoinsTablas = [];
  }

  void addItemsFromCols() {
    String campo, type;
    Map<String, String> mapExcepCampos = MapExcepciones.initMapCamposExcepciones();
    for (List<dynamic> row in lstCols) {
      campo = row[0];
      type = row[1];

      if (campo.startsWith("id_")) {
        String alias = "", cTablaJoin = "" ;
        DRowRelacionesCamposEtc? rowRel = lstRelaciones.firstWhereOrNull((it) => it.tablaOrigen == tablaLower && it.campoID == campo);
        if (rowRel == null) {
          Utils.printInfo("tabla: $tablaLower, campo: $campo");
        } else {
          alias = rowRel.alias;
          if (mapExcepCampos["${rowRel.tablaOrigen}.${rowRel.campoID}"] != null) {
            alias = mapExcepCampos["${rowRel.tablaOrigen}.${rowRel.campoID}"]!;
          } else if (mapExcepCampos[rowRel.campoID] != null) {
            alias = mapExcepCampos[rowRel.campoID]!;
          } else {
            alias = alias + Utils
                .getNameVariable(rowRel.campoID.substring(3))
                .proper; // ? provisional, se irá haciendo poco a poco en relacionestablas
          }
          cTablaJoin = rowRel.tablaJoin;
          String cTbl  = Utils.getNameVariable(cTablaJoin).proper;
          String cVarRow = "row${alias.proper}";
          lstJoinsTablas.add("$cVarRow = map['${alias.toLowerCase()}'] == null ? null :  DRow$cTbl.fromMap(map['${alias.toLowerCase()}']);\n");
          lstVarsRows.add("late DRow$cTbl? $cVarRow;\n");
        }
      }

      String cVar = Utils.getNameVariable(campo);
      String cTipoDart = Utils.getTipoDart(type);

      String key = "late $cTipoDart";
      if (mapVarsROW[key] == null) {
        mapVarsROW[key] = [cVar];
      } else {
        List<String> lstTmp =  mapVarsROW[key]!;
        lstTmp.add(cVar);
        mapVarsROW[key] = lstTmp;
      }
      String cPlantilla = "";
      String cDef = Utils.getDefectoDart(type);
      if (cTipoDart == "double") {
        cPlantilla = '$cVar = double.tryParse(map["$campo"].toString()) ?? 0;\n';
      } else if (cDef == "") {
        cPlantilla = '$cVar = map["$campo"];\n';
      } else {
        cPlantilla = '$cVar = map["$campo"] ?? $cDef;\n';
      }
      lstAsignacionesDRows.add(cPlantilla);

    }
  }



}