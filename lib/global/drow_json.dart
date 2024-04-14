import 'package:collection/collection.dart';
import 'package:generador_sql_tablas/global/extension_metodos.dart';
import 'package:generador_sql_tablas/global/global.dart';
import 'package:generador_sql_tablas/global/relaciones_tablas.dart';
import 'package:generador_sql_tablas/global/utils.dart';

import 'maps_excepciones.dart';

class GenerarDRowJson {
  GenerarDRowJson(this.tablaLower, this.tablaProper, this.lstRelaciones, this.lstCols);
  final String tablaLower, tablaProper;
  final List<DRowRelacionesCamposEtc> lstRelaciones;
  final List<DRowColsTabla> lstCols;

  Map<String, List<String>> mapVarsROW = {};
  List<String> lstAsignacionesDRows = [], lstJoinsDRows = [], lstJoinsTablas = [], lstVarsRows = [];


  String create() {
    initListsAndMaps();
    addItemsFromCols();


    return generarClaseDRowJson();
  }

  String generarClaseDRowJson() {
    String cNexo = (Utils.isClaseBase(tablaLower)) ? "Part" : "";
    String cCad = "class DRow$tablaProper$cNexo extends DRowBasico {\n";
    mapVarsROW.forEach((key, value) {
      cCad += Utils.getDeclaracionVars(key, value);
    });
    cCad += "\n";
    cCad += lstVarsRows.join("");
    if (tablaLower == "app_blobs") {
     cCad += "Uint8List? recurso; //  Uint8List.fromList([]);\n";
     cCad += "Image? image;\n";
    }
    cCad += "\n";

    cCad += "DRow$tablaProper$cNexo.fromMap(Map<String, dynamic>? map, {bool lAddMap = false}) {\n";
    cCad += "if (map == null || map.isEmpty) return;\n";
    cCad += "try {\n";
    cCad += lstAsignacionesDRows.join("");
    /// Excepcion AppBlobs
    if (tablaLower == "app_blobs") {
      cCad += "if(map['recurso'] != null) {\n";
      cCad += "recurso = map['recurso'] as Uint8List;\n";
      cCad += "image = Image.memory(recurso!);\n}\n";
    }
    cCad += "\n";
    cCad += "if (lAddMap) addMaps(map);\n";
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
    for (DRowColsTabla row in lstCols) {
      campo = row.campo;
      type = row.tipo;

      if (tablaLower == "app_blobs" && campo == "recurso") {
        continue;
      }

      if (campo.startsWith("id_")) {
        String alias = "", cTablaJoin = "" ;
        DRowRelacionesCamposEtc? rowRel = lstRelaciones.firstWhereOrNull((it) => it.tablaOrigen == tablaLower && it.campoID == campo);
        if (rowRel == null || rowRel.tablaJoin == "XXX") {
          // si rowRel == null, no esta en relaciones, son excepciones?? habrá que verlo
          // Por ejemplo, estos pueden apuntar a varios sitios, hay que studiar cada caso
          // tabla: app_blobs, campo: id_origen
          // tabla: app_blobs, campo: id_blob_origen
          if (rowRel == null) {
            Utils.printInfo("tabla: $tablaLower, campo: $campo");
          }
        } else {
          if (campo.startsWith("id_")) {
            String cMapAlias = 'mapAlias["${rowRel.tablaJoin}"]!;';
            Utils.printInfo('mapCamposExc["${rowRel.tablaOrigen.toLowerCase()}.$campo"] = $cMapAlias');
          }

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
          /// Otra forma si es necesario, 01/03/2024
          // lstJoinsTablas.add("$cVarRow = DRow$cTbl.fromMap(getMapFromMap(map, '${alias.toLowerCase()}'));\n");
          cVarRow = Utils.getVarCamelCase(cVarRow);
          lstJoinsTablas.add("$cVarRow = DRow$cTbl.fromMap(map['${alias.toLowerCase()}']);\n");
          lstVarsRows.add("late DRow$cTbl $cVarRow;\n");
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
      } else if (cTipoDart == "List<int>") {
        cPlantilla = '$cVar = ((map["$campo"] ?? []) as List).cast<int>();\n';
      } else if (cDef == "") {
        cPlantilla = '$cVar = map["$campo"];\n';
      } else {
        cPlantilla = '$cVar = map["$campo"] ?? $cDef;\n';
      }
      lstAsignacionesDRows.add(cPlantilla);

    }
  }



}