import 'package:collection/collection.dart';
import 'package:generador_sql_tablas/global/extension_metodos.dart';
import 'package:generador_sql_tablas/global/global.dart';
import 'package:generador_sql_tablas/global/relaciones_tablas.dart';
import 'package:generador_sql_tablas/global/utils.dart';
import 'maps_excepciones.dart';

class GenerarDRowMapping {
  GenerarDRowMapping(this.tablaLower, this.tablaProper, this.lstRelaciones, this.lstCols, this.aliasTabla);
  final String tablaLower, tablaProper, aliasTabla;
  final List<DRowRelacionesCamposEtc> lstRelaciones;
  final List<DRowColsTabla> lstCols;
  String aliasForJoin = "";

  late List<String> lstGetsSetsDRowsNew, lstJoinsDRowsNew, lstJoinsTablas;

  String create() {
    initListsAndMaps();
    addItemsFromCols();
    aliasForJoin = aliasTabla.toLowerCase();


    return generarClaseDRowJsonMappnig();
  }

  String generarClaseDRowJsonMappnig() {
    getDeclaracionJoinsFromRelaciones();
    /// Declaracion
    String cName = Utils.nombreKeyClasesBase(tablaLower, tablaProper);
    String cClase = "DRow${cName}Mapping";
    String cCad = "class $cClase extends DRowMapping {\n";
    // cCad += "nombreSQL = '$tablaLower', aliasSQL = '$aliasTabla';\n\n"; ???
    /// Constructores
    //if (Utils.isClaseBase(tablaLower)) {
      // Utils.printInfo("Es clase base: $tablaLower");
    //} else {
      cCad += "final String aliasTabla = '${aliasTabla.toLowerCase()}';\n";
      cCad += "$cClase.select(Map<String, dynamic> map) {super.map = map;}\n";
      cCad += "$cClase.join(Map<String, dynamic> map, String aliasPadre) {super.map = map; super.aliasJoin = '\$aliasPadre\${aliasTabla}__'; }\n\n";
    //}

    // cCad += "$cClase.select(super.map) : super.select();\n";
    // cCad += "$cClase.join(super.map, String aliasPadre) : super.join() { aliasJoin = '\${aliasPadre}$aliasForJoin'; }\n\n";
    /// Get y set de las variables en relacion al map que recibmos de SQL
    cCad += lstGetsSetsDRowsNew.join("");
    /// rows de las tablas con lkas que se hace JOIN
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
    for (DRowColsTabla row in lstCols) {
      campo = row.campo;
      type = row.tipo;
      String cVar = getNameVariableCampo(campo);

      // DRowsNew
      String cTipoDart = Utils.getTipoDart(type);
      String cDef = Utils.getDefectoDart(type);
      String cMapCampo = "getMap('$campo')";
      if (campo == "verialid") {
        cPlantilla = "int get $cVar => $cMapCampo ?? 0;\n";
        lstGetsSetsDRowsNew.add(cPlantilla);
      } else {
        if (type == "numeric") {
          cPlantilla = "$cTipoDart get $cVar => double.tryParse($cMapCampo.toString()) ?? 0;\n";
        } else if (cDef == "") {
          cPlantilla = "$cTipoDart get $cVar => $cMapCampo;\n";
        } else {
          cPlantilla = "$cTipoDart get $cVar => $cMapCampo ?? $cDef;\n";
        }
        lstGetsSetsDRowsNew.add(cPlantilla);
        cPlantilla = "set $cVar($cTipoDart valor) => setMap('$campo', valor);\n";
        lstGetsSetsDRowsNew.add(cPlantilla);
      }
    }
  }

  void getDeclaracionJoinsFromRelaciones() {
    Map<String, String> mapExcepCampos = MapExcepciones.initMapCamposExcepciones();
    for (var campo in lstJoinsTablas) {
      DRowRelacionesCamposEtc? rowRel = lstRelaciones.firstWhereOrNull((it) => it.tablaOrigen == tablaLower && it.campoID == campo);
      if (rowRel == null || rowRel.tablaJoin == "XXX") {
        continue;
      }
      String alias = rowRel.alias;
      if (mapExcepCampos["${rowRel.tablaOrigen}.${rowRel.campoID}"] != null) {
        alias = mapExcepCampos["${rowRel.tablaOrigen}.${rowRel.campoID}"]!;
      } else if (mapExcepCampos[rowRel.campoID] != null) {
        alias = mapExcepCampos[rowRel.campoID]!;
      } else {
        alias = alias + getNameVariableCampo(rowRel.campoID.substring(3)).proper; // ? provisional, se irá haciendo poco a poco en relacionestablas
      }

      String cTablaJoin = rowRel.tablaJoin;
      //if (cTablaJoin.endsWith("_g") || cTablaJoin.endsWith("_i")) continue; // *************** TODO: ver que se hace

      String cPlantilla;
      String cDRow = "DRow${getNameVariableCampo(cTablaJoin).proper}Mapping";
      alias = Utils.getVarCamelCase(alias);
      cPlantilla = " late $cDRow row${alias.proper} = $cDRow.join(super.map, super.aliasJoin);\n";
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