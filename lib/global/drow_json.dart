import 'package:generador_sql_tablas/global/relaciones_tablas.dart';
import 'package:generador_sql_tablas/global/utils.dart';

class GenerarDRowJson {
  GenerarDRowJson(this.tablaLower, this.lstRelaciones, this.lstCols);
  final String tablaLower;
  final List<DRowRelacionesCamposEtc> lstRelaciones;
  final List<List<dynamic>> lstCols;

  Map<String, List<String>> mapVarsROW = {};
  List<String> lstAsignacionesDRows = [], lstJoinsDRows = [];


  String create() {
    initListsAndMaps();


    return generarClaseDRowJson();
  }

  String generarClaseDRowJson() {
    String cClase = "";

    return cClase;
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

    }
  }



}