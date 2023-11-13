import 'package:generador_sql_tablas/global/extension_metodos.dart';
import 'package:generador_sql_tablas/global/relaciones_tablas.dart';
import 'package:collection/collection.dart';
import 'package:generador_sql_tablas/global/utils.dart';
import 'global.dart';
import 'maps_excepciones.dart';

class GenerarTablaSQL {
  GenerarTablaSQL(this.schema, this.tablaLower, this.tablaProper, this.aliasTabla, this.lstRelaciones, this.lstCols);
  final String schema, tablaLower, tablaProper, aliasTabla;
  final List<DRowRelacionesCamposEtc> lstRelaciones;
  final List<List<dynamic>> lstCols;



  late List<String> lstCamposSQLVars, lstGetsCamposSQL, lstJoinsTablas, lstAsignacionesCamposSQL;
  late List<String> lstGetsTblJoins;
  late Map<String, List<String>> mapVarsTblJoins = {};
  late Map<String, String> mapImports, mapExcepCampos;
  bool lGrupoEmp = false;

  String create() {
    initListsAndMaps();
    addItemsFromCols();

    return generarClaseTablaSQL();
  }

  String generarClaseTablaSQL() {
    lGrupoEmp = (schema == "public");
    mapExcepCampos = MapExcepciones.initMapCamposExcepciones();

    /// JOINS CON OTRAS TABLAS
    getDeclaracionJoinsFromRelaciones();

    /// DECLARACION CLASE
    String cName = Utils.nombreKeyClasesBase(tablaLower, tablaProper);

    String cCad = "class ${cName}SQL extends TablaSQL {\n";

    /// CONSTRUCTOR JOINS
    if (!Utils.isClaseBase(tablaLower)) {
      // cCad += "\n${tablaProper}SQL.joins(String cCampoJoin, String cAliasJoin, TablaSQL? oTablaSelectJoin, {String joinManual = ''}) {\n";
      cCad += "\n${tablaProper}SQL.joins(String cCampoJoin, String cNexoAlias, TablaSQL? oTablaSelectJoin, {String joinManual = ''}) {\n";
      cCad += "initCampos();\n";
      cCad += "campoJoin = cCampoJoin;\n";
      cCad += "nexoAlias = cNexoAlias;\n";
      cCad += "joinStr = joinManual;\n";
      cCad += "oTablaJoin = oTablaSelectJoin;\n}\n\n";

      /// CONSTRUCTOR
      cCad += "${tablaProper}SQL() {\n initCampos();\n}\n\n";


      /// INITCAMPOS
      cCad += "void initCampos() {\n";
      cCad += "nombreSQL = '$tablaLower';\n";
      cCad += "aliasSQL = '$aliasTabla';\n";
      cCad += "lGrupoEmp = $lGrupoEmp;\n";
      cCad += "}\n\n";
    }

    /// VARIABLES
    cCad += Utils.getDeclaracionVars("CampoSQL?", lstCamposSQLVars);
    cCad += "/// Joins Vars\n";
    mapVarsTblJoins.forEach((key, value) {
      cCad += Utils.getDeclaracionVars(key, value);
    });

      cCad += "/// CamposSQL Gets\n";
    cCad += "CampoSQL get all => CampoSQL('*', '', this);\n";
    cCad += lstGetsCamposSQL.join();
    cCad += "/// JOINS Gets\n";
    cCad += lstGetsTblJoins.join();

    cCad += "\n}\n\n";
    cCad = getImports() + cCad;

    return cCad;
  }

  void getDeclaracionJoinsFromRelaciones() {
    for (var campo in lstJoinsTablas) {
      DRowRelacionesCamposEtc? rowRel = lstRelaciones.firstWhereOrNull((it) => it.tablaOrigen == tablaLower && it.campoID == campo);
      if (rowRel == null) {
        continue;
      }

      // if (rowRel.tablaJoin.endsWith("_g") || rowRel.tablaJoin.endsWith("_i")) {
      //   continue;
      // }
      String cTablaJoin = rowRel.tablaJoin;

      if (cTablaJoin != tablaLower) {
        List<TablasSQL> lstTmp = GBL.lstTablas.where((it) => it.tablaName == cTablaJoin).toList();
        if (lstTmp.length == 1) {
           TablasSQL row = lstTmp.first;

          if (Utils.isClaseBase(cTablaJoin)) {
            mapImports[cTablaJoin] = "import '../modelos_ext/${cTablaJoin}_ext.dart';";
          } else {
            String cNexo = (row.schema == "public") ? "grp" : "emp";
            mapImports[cTablaJoin] = "import '${row.tablaName}_$cNexo.dart';";
          }
        } else {
          Utils.printInfo(cTablaJoin);
        }
      } else {
        if (Utils.isClaseBase(tablaLower)) {
          mapImports[cTablaJoin] = "import '../modelos_ext/${cTablaJoin}_ext.dart';";
        }
      }
      // ? EJEMPLO
      /// ArbolesSQL? _arbCat;
      /// ArbolesSQL get arb => _arb ?? ArbolesSQL.joins('id_padre', 'arb', this);
      String alias = rowRel.alias;
      if (mapExcepCampos["${rowRel.tablaOrigen}.${rowRel.campoID}"] != null) {
        alias = mapExcepCampos["${rowRel.tablaOrigen}.${rowRel.campoID}"]!;
      } else if (mapExcepCampos[rowRel.campoID] != null) {
        alias = mapExcepCampos[rowRel.campoID]!;
      } else {
        alias = alias + getNameVariableCampo(rowRel.campoID.substring(3)).proper; // ? provisional, se irá haciendo poco a poco
      }

      String tipoDatoTabla = "${getNameVariableCampo(cTablaJoin).proper}SQL";

      // Map de declaraciones de Joins para luego dividir por filas
      String key = "$tipoDatoTabla?";
      if (mapVarsTblJoins[key] == null) {
        mapVarsTblJoins[key] = ["_$alias"];
      } else {
        List<String> lstTmp = mapVarsTblJoins[key]!;
        lstTmp.add("_$alias");
        mapVarsTblJoins[key] = lstTmp;
      }

      String cTablaJoinGet = "$tipoDatoTabla get $alias => _$alias ?? $tipoDatoTabla.joins('${rowRel.campoID}', '$alias', this);\n";
//      String cTablaJoinGet = "$tipoDatoTabla get $alias => _$alias ?? $tipoDatoTabla.joins('${rowRel.campoID}', this);\n";
      lstGetsTblJoins.add(cTablaJoinGet);

      /// TODO Ver los joins manuales. habrá que ver cuales son realmente
    }
  }

  void addItemsFromCols() {
    String campo, type;
    for (List<dynamic> row in lstCols) {
      campo = row[0];
      type = row[1];
      String cVar = getNameVariableCampo(campo);
      String cType = Utils.getTipoSQL(type, row[2] ?? 0, row[3] ?? 0, row[4] ?? 0);
      String cPlantilla = '$cVar = CampoSQL("$campo", "$cType", oTablaMain: this);';
      String cPlantillaGet = 'CampoSQL get $cVar => (_$cVar ??= CampoSQL("$campo", "$cType", this));\n';

      lstAsignacionesCamposSQL.add(cPlantilla);

      lstCamposSQLVars.add("_$cVar");
      lstGetsCamposSQL.add(cPlantillaGet);
    }
  }

  String getImports() {
    String cCad = "import '../abstract/entidades_sql.dart';\n";
    cCad += "import '../../global/utils.dart';\n";
    //cCad += "import '../modelos_ext/joins_manuales.dart';\n";

    mapImports.forEach((key, value) {
      cCad += "$value\n";
    });
    return "$cCad\n\n";
  }

  String getNameVariableCampo(String campo) {
    if (campo.startsWith("id_")) {
      lstJoinsTablas.add(campo);
    }
    return Utils.getNameVariable(campo);
  }

  void initListsAndMaps() {
    lstCamposSQLVars = [];
    lstGetsCamposSQL = [];
    lstGetsTblJoins = [];

    lstAsignacionesCamposSQL = [];
    lstJoinsTablas = [];
    mapImports = {};
    mapVarsTblJoins = {};
    // mapCamposExc, mapDRowExc, mapVarsTblExc, mapJoinsTblExc  NO se vacia
  }
}
