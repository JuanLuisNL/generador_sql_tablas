import 'package:generador_sql_tablas/global/extension_metodos.dart';
import 'package:generador_sql_tablas/global/relaciones_tablas.dart';
import 'package:collection/collection.dart';
import 'package:generador_sql_tablas/global/utils.dart';
import 'maps_excepciones.dart';

class GenerarTablaSQL {
  GenerarTablaSQL(this.tablaLower, this.tablaProper, this.lstRelaciones, this.lstCols, this.lstTablasServer);
  final String tablaLower, tablaProper;
  final List<DRowRelacionesCamposEtc> lstRelaciones;
  final List<List<dynamic>> lstCols;
  final List<String> lstTablasServer;

  late List<String> lstCamposSQLVars, lstGetsCamposSQL,  lstJoinsTablas, lstAsignacionesCamposSQL;
  late List<String> lstGetsTblJoins;
  late Map<String, List<String>> mapVarsTblJoins = {};
  late Map<String, String> mapImports, mapExcepCampos;
  late Map<String, List<String>> mapExcepVarsTbl, mapExcepJoinsTbl , mapExcepImportsTbl;


  String create() {
    initListsAndMaps();
    addItemsFromCols();

    return generarClaseTablaSQL();
  }


  String generarClaseTablaSQL() {
    String aliasTabla;
    mapExcepVarsTbl = MapExcepciones.initTablaVarsExcepciones();
    mapExcepJoinsTbl = MapExcepciones.initTablaJoinsExcepciones();
    mapExcepImportsTbl = MapExcepciones.initTablaImportsExcepciones();
    mapExcepCampos = MapExcepciones.initMapCamposExcepciones();

    DRowRelacionesCamposEtc? row = lstRelaciones.firstWhereOrNull((it) => it.tablaJoin == tablaLower);
    if (row == null) {
      aliasTabla = tablaLower.substring(0, 3);
    } else {
      aliasTabla = row.alias;
    }

    /// JOINS CON OTRAS TABLAS
    getDeclaracionJoinsFromRelaciones();

    /// DECLARACION CLASE
    String cCad = "class ${tablaProper}SQL extends TablaSQL {\n";

    /// VARIABLES
    cCad += Utils.getDeclaracionVars("CampoSQL?", lstCamposSQLVars);
    cCad += "/// Joins Vars\n";
    mapVarsTblJoins.forEach((key, value) {
      cCad += Utils.getDeclaracionVars(key, value);
    });
    /// Excepciones vars joins
    if (mapExcepVarsTbl[tablaLower] != null) {
      for (var it in mapExcepVarsTbl[tablaLower]!) {
        cCad += it;
      }
    }


    cCad += "/// CamposSQL Gets\n";
    cCad += "CampoSQL get all => CampoSQL('*', '', this);\n";
    cCad += lstGetsCamposSQL.join();
    cCad += "/// JOINS Gets\n";
    cCad += lstGetsTblJoins.join();
    /// Excepciones Get joins
    if (mapExcepJoinsTbl[tablaLower] != null) {
      for (var it in mapExcepJoinsTbl[tablaLower]!) {
        cCad += it;
      }
    }

    /// CONSTRUCTOR JOINS
    cCad += "\n${tablaProper}SQL.joins(String cCampoJoin, String cAliasJoin, TablaSQL? oTablaSelectJoin, {String joinManual = ''}) {\n";
    cCad += "initCampos();\n";
    cCad += "campoJoin = cCampoJoin;\n";
    cCad += "aliasJoin = cAliasJoin;\n";
    cCad += "joinStr = joinManual;\n";
    cCad += "oTablaJoin = oTablaSelectJoin;\n}\n\n";

    /// CONSTRUCTOR
    cCad += "${tablaProper}SQL() {\n initCampos();\n}\n\n";

    /// INITCAMPOS
    cCad += "void initCampos() {\n";
    cCad += "nombreSQL = '$tablaLower';\n";
    cCad += "aliasSQL = '$aliasTabla';\n";
    cCad += "\n}\n}\n\n";
    cCad = getImports() + cCad;

    return cCad;
  }

  void getDeclaracionJoinsFromRelaciones() {
    for (var campo in lstJoinsTablas) {
      DRowRelacionesCamposEtc? rowRel = lstRelaciones.firstWhereOrNull((it) => it.tablaOrigen == tablaLower && it.campoID == campo);
      if (rowRel == null) {
        continue;
      }

      if (rowRel.tablaJoin.endsWith("_g") || rowRel.tablaJoin.endsWith("_i")) {
        continue;
      }
      String cTablaJoin = rowRel.tablaJoin;

      if (cTablaJoin != tablaLower) {
        String cImport = lstTablasServer.firstWhereOrNull((it) => it == cTablaJoin) ?? "";
        if (cImport != tablaLower) {
          if (cImport != "") {
            mapImports[cTablaJoin] = "import '${cImport}_base.dart';";
          } else {
            // hay alguna tabla original con guiones
            String cImport = lstTablasServer.firstWhereOrNull((it) => it == cTablaJoin) ?? "";
            if (cImport != "") {
              mapImports[cTablaJoin] = "import '${cImport}_base.dart';";
            } else {
              Utils.printInfo(tablaLower);
            }
          }
        }
      }
      // ? EJEMPLO
      /// ArbolesSQL? _arbCat;
      /// ArbolesSQL get arb => _arb ?? ArbolesSQL.joins('id_padre', 'arb', this);
      String alias = rowRel.alias;
      if (mapExcepCampos[rowRel.campoID] != null) {
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
        List<String> lstTmp =  mapVarsTblJoins[key]!;
        lstTmp.add("_$alias");
        mapVarsTblJoins[key] = lstTmp;
      }

      String cTablaJoinGet = "$tipoDatoTabla get $alias => _$alias ?? $tipoDatoTabla.joins('${rowRel.campoID}', '$alias', this);\n";
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
      String cPlantillaGet = 'CampoSQL get $cVar => _$cVar ?? CampoSQL("$campo", "$cType", this);\n';

      lstAsignacionesCamposSQL.add(cPlantilla);

      lstCamposSQLVars.add("_$cVar");
      lstGetsCamposSQL.add(cPlantillaGet);
    }
  }

  String getImports() {
    String cCad = "import '../abstract/entidades_sql.dart';\n";
    cCad += "import '../../global/utils.dart';\n";
    cCad += "import '../main_tablas/joins_manuales.dart';";

    mapImports.forEach((key, value) {
      cCad += "$value\n";
    });
    if (mapExcepImportsTbl[tablaLower] != null) {
      for(var it in mapExcepImportsTbl[tablaLower]!) {
        if (!mapImports.values.contains(it)) {
          cCad += it;
        }
      }
    }
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