import 'package:generador_sql_tablas/global/relaciones_tablas.dart';
import 'package:generador_sql_tablas/global/utils.dart';

class GenerarDRowMapping {
  GenerarDRowMapping(this.tablaLower, this.lstRelaciones, this.lstCols);
  final String tablaLower;
  final List<DRowRelacionesCamposEtc> lstRelaciones;
  final List<List<dynamic>> lstCols;

  late List<String> lstGetsSetsDRowsNew = [], lstJoinsDRowsNew = [];

  String create() {
    initListsAndMaps();


    return generarClaseDRowJsonMappnig();
  }

  String generarClaseDRowJsonMappnig() {
    String cClase = "";

    return cClase;
  }

  void initListsAndMaps() {
    lstGetsSetsDRowsNew = [];
    lstJoinsDRowsNew = [];
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

}