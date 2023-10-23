import 'package:collection/collection.dart';
import 'package:generador_sql_tablas/global/extension_metodos.dart';
import 'package:generador_sql_tablas/global/relaciones_tablas.dart';
import 'package:generador_sql_tablas/global/utils.dart';

import 'maps_excepciones.dart';

class GenerarDRowMapping {
  GenerarDRowMapping(this.tablaLower, this.tablaProper, this.lstRelaciones, this.lstCols);
  final String tablaLower, tablaProper;
  final List<DRowRelacionesCamposEtc> lstRelaciones;
  final List<List<dynamic>> lstCols;

  late List<String> lstGetsSetsDRowsNew, lstJoinsDRowsNew, lstJoinsTablas;
  Map<String, String> mapExcepCampos = {};

  String create() {
    initListsAndMaps();
    addItemsFromCols();


    return generarClaseDRowJsonMappnig();
  }

  String generarClaseDRowJsonMappnig() {
    getDeclaracionJoinsFromRelaciones();

    String cClase = "DRow${tablaProper}Mapping";
    String cCad = "class $cClase extends DRowMapping {\n";
    cCad += "$cClase.select(super.mapParam, super.cTabla) : super.select();\n";
    cCad += "$cClase.join(super.mapParamJoin) : super.join();\n\n";
    cCad += lstGetsSetsDRowsNew.join("");
    cCad += lstJoinsDRowsNew.join("");
    return "$cCad}\n\n";
  }

  void initListsAndMaps() {
    lstGetsSetsDRowsNew = [];
    lstJoinsDRowsNew = [];
    lstJoinsTablas = [];
  }

  void addItemsFromCols() {
    String campo, type, cPlantilla = "";
    for (List<dynamic> row in lstCols) {
      campo = row[0];
      type = row[1];
      String cVar = Utils.getNameVariable(campo);

      // DRowsNew
      String cTipoDart = Utils.getTipoDart(type);
      String cDef = Utils.getDefectoDart(type);
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

  void getDeclaracionJoinsFromRelaciones() {
    mapExcepCampos = MapExcepciones.initMapCamposExcepciones();
    for (var campo in lstJoinsTablas) {
      DRowRelacionesCamposEtc? rowRel = lstRelaciones.firstWhereOrNull((it) => it.tablaOrigen == tablaLower && it.campoID == campo);
      if (rowRel == null) {
        continue;
      }
      String alias = rowRel.alias;
      if (mapExcepCampos[rowRel.campoID] != null) {
        alias = mapExcepCampos[rowRel.campoID]!;
      } else {
        alias = alias + getNameVariableCampo(rowRel.campoID.substring(3)).proper; // ? provisional, se irá haciendo poco a poco
      }

      String cTablaJoin = rowRel.tablaJoin;
      String cPlantilla;
      String cDRow = "DRow${getNameVariableCampo(cTablaJoin).proper}Mapping";
      cPlantilla = " late $cDRow? row${alias.proper} = $cDRow.join(mapParam!['${cTablaJoin.proper}']);\n";
      lstJoinsDRowsNew.add(cPlantilla);
    }

  }

  String getNameVariableCampo(String campo) {
    if (campo.startsWith("id_")) {
      lstJoinsTablas.add(campo);
    }
    return Utils.getNameVariable(campo);
  }

}