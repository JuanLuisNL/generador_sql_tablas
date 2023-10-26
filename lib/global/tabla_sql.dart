import 'package:generador_sql_tablas/global/extension_metodos.dart';
import 'package:generador_sql_tablas/global/relaciones_tablas.dart';
import 'package:collection/collection.dart';
import 'package:generador_sql_tablas/global/utils.dart';
import 'maps_excepciones.dart';

class GenerarTablaSQL {
  GenerarTablaSQL(this.tablaLower, this.tablaProper, this.aliasTabla, this.lstRelaciones, this.lstCols, this.lstTablasServer);

  final String tablaLower, tablaProper, aliasTabla;
  final List<DRowRelacionesCamposEtc> lstRelaciones;
  final List<List<dynamic>> lstCols;
  final List<String> lstTablasServer;

  late List<String> lstCamposSQLVars, lstGetsCamposSQL, lstJoinsTablas, lstAsignacionesCamposSQL;
  late List<String> lstGetsTblJoins;
  late Map<String, List<String>> mapVarsTblJoins = {};
  late Map<String, String> mapImports, mapExcepCampos;
  late Map<String, List<String>> mapExcepVarsTbl, mapExcepJoinsTbl, mapExcepImportsTbl;

  String create() {
    initListsAndMaps();
    addItemsFromCols();

    return generarClaseTablaSQL();
  }

  String generarClaseTablaSQL() {
    mapExcepVarsTbl = initTablaVarsExcepciones();
    mapExcepJoinsTbl = initTablaJoinsExcepciones();
    mapExcepImportsTbl = initTablaImportsExcepciones();
    mapExcepCampos = MapExcepciones.initMapCamposExcepciones();

    /// JOINS CON OTRAS TABLAS
    getDeclaracionJoinsFromRelaciones();

    /// DECLARACION CLASE
    String cName = Utils.nombreKeyClasesBase(tablaLower, tablaProper);

    String cCad = "class ${cName}SQL extends TablaSQL {\n";

    /// CONSTRUCTOR JOINS
    if (!Utils.isClaseBase(tablaLower)) {
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
      cCad += "\n}\n";
    }

    /// VARIABLES
    cCad += Utils.getDeclaracionVars("CampoSQL?", lstCamposSQLVars);
    cCad += "/// Joins Vars\n";
    mapVarsTblJoins.forEach((key, value) {
      cCad += Utils.getDeclaracionVars(key, value);
    });

    /// Excepciones vars joins
    if (false) {
      String cKey = "$tablaLower-";
      for (var it in mapExcepVarsTbl.entries.where((it) => it.key.startsWith(cKey))) {
        cCad += it.value.first;
      }
    }

    cCad += "/// CamposSQL Gets\n";
    cCad += "CampoSQL get all => CampoSQL('*', '', this);\n";
    cCad += lstGetsCamposSQL.join();
    cCad += "/// JOINS Gets\n";
    cCad += lstGetsTblJoins.join();

    /// Excepciones Get joins
     if (false) {
       if (mapExcepJoinsTbl[tablaLower] != null) {
         for (var it in mapExcepJoinsTbl[tablaLower]!) {
           cCad += it;
         }
       }
     }

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

      if (rowRel.tablaJoin.endsWith("_g") || rowRel.tablaJoin.endsWith("_i")) {
        continue;
      }
      String cTablaJoin = rowRel.tablaJoin;

      if (cTablaJoin != tablaLower) {
        String cImport = lstTablasServer.firstWhereOrNull((it) => it == cTablaJoin) ?? "";
        if (cImport != tablaLower) {
          if (Utils.isClaseBase(cTablaJoin)) {
            mapImports[cTablaJoin] = "import '../modelos_ext/${cTablaJoin}_ext.dart';";
          } else if (cImport != "") {
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
      } else {
        if (Utils.isClaseBase(tablaLower)) {
          mapImports[cTablaJoin] = "import '../modelos_ext/${cTablaJoin}_ext.dart';";
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
        List<String> lstTmp = mapVarsTblJoins[key]!;
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
    //cCad += "import '../modelos_ext/joins_manuales.dart';\n";

    mapImports.forEach((key, value) {
      cCad += "$value\n";
    });
    if (false) {
      if (mapExcepImportsTbl[tablaLower] != null) {
        for (var it in mapExcepImportsTbl[tablaLower]!) {
          if (!mapImports.values.contains(it)) {
            cCad += it;
          }
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

  Map<String, List<String>> initTablaImportsExcepciones() {
    Map<String, List<String>> map = {};
    map["articulos"] = ["import 'art_delegaciones_base.dart';\n"];
    return map;
  }

  static Map<String, List<String>> initTablaVarsExcepciones() {
    Map<String, List<String>> map = {};
    map["articulos-1"] = ["ArtDelegacionesSQL? _artDel;\n"];
    map["articulos-2"] = ["ProveedoresSQL? _prvdArtDel;\n"];
    return map;
  }

  Map<String, List<String>> initTablaJoinsExcepciones() {
    String cJoin = "";
    Map<String, List<String>> map = {};
    List<String> lstValues = [];
    lstValues.add("ArtDelegacionesSQL get artDel => _artDel ?? ArtDelegacionesSQL.joins('', 'artDel', this, joinManual: JoinsMan.artJoinArtDel);\n");
    lstValues.add("ProveedoresSQL get prvdArtDel => _prvdArtDel ?? ProveedoresSQL.joins('', 'artDel.prvd', this, joinManual: JoinsMan.artJoinArtDelProv);\n");
    map["articulos"] = lstValues;
    return map;
  }
}
