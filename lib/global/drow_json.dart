import 'package:generador_sql_tablas/global/relaciones_tablas.dart';
import 'package:generador_sql_tablas/global/utils.dart';

class GenerarDRowJson {
  GenerarDRowJson(this.tablaLower, this.tablaProper, this.lstRelaciones, this.lstCols);
  final String tablaLower, tablaProper;
  final List<DRowRelacionesCamposEtc> lstRelaciones;
  final List<List<dynamic>> lstCols;

  Map<String, List<String>> mapVarsROW = {};
  List<String> lstAsignacionesDRows = [], lstJoinsDRows = [];


  String create() {
    initListsAndMaps();
    addItemsFromCols();


    return generarClaseDRowJson();
  }

  String generarClaseDRowJson() {
    String cCad = "class DRow$tablaProper {\n";
    mapVarsROW.forEach((key, value) {
      cCad += Utils.getDeclaracionVars(key, value);
    });

    cCad += "DRow$tablaProper.fromMap(Map<String, dynamic> mapParam) {\n";
    cCad += "try {\n";
    cCad += 'Map<String, dynamic> map = mapParam["$tablaLower"];\n';
    cCad += lstAsignacionesDRows.join("");
    cCad += '} catch (e, stack) {\n';
    cCad += 'Utils.printError(e, traza: stack, mapInfo: {"Proceso": "DRowArticulo.fromMap"});\n}\n}\n';
    return "$cCad}\n\n";
  }

  void initListsAndMaps() {
    mapVarsROW = {};
    lstAsignacionesDRows = [];
    lstJoinsDRows = [];
  }

  void addItemsFromCols() {
    String campo, type;
    for (List<dynamic> row in lstCols) {
      campo = row[0];
      type = row[1];

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