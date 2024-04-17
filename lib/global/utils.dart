import 'package:flutter/foundation.dart';
import 'package:generador_sql_tablas/global/extension_metodos.dart';

class Utils {
  // Devuelve una cadena en base a un tipo de dato no variables: CamposSQL y otro tipo de datos
  static String getDeclaracionVars(String cTipo, List<String> lstVars) {
    cTipo += " ";
    String cFila = cTipo, cTodo = "";
    for (String campo in lstVars) {
      campo = getVarCamelCase(campo);
      if ((cFila.length + campo.length) > 150) {
        cFila = cFila.trim().replaceFirst(",", ";", cFila.length - 2);
        cTodo += "$cFila\n";
        cFila = "$cTipo$campo, ";
      } else {
        cFila += "$campo, ";
      }
    }
    if (cFila != cTipo) {
      if (cFila.trim().endsWith(",")) {
        cFila = cFila.replaceFirst(",", ";", cFila.length - 2);
      }
      cTodo += "${cFila.trim()}\n";
    }
    return cTodo;
  }

  static String getVarCamelCase(String campo) {
    String cFinal = "";
    cFinal = campo;
    if (campo.startsWith("_")) {
      List<String> lstPartes = campo.substring(1).split("_");
      if (lstPartes.length == 2) {
        cFinal = "_${lstPartes[0]}${lstPartes[1].proper}";
      }
    } else if (campo.contains("_")) {
      List<String> lstPartes = campo.split("_");
      if (lstPartes.length == 2) {
        cFinal = "${lstPartes[0]}${lstPartes[1].proper}";
      }
    }
    return cFinal;
  }

  static String getTipoSQL(String type, int numMaxStr, int radix, int scale) {
    if (type.contains("varying")) return 'C$numMaxStr';
    if (type == "smallint") return 'I2';
    if (type == "integer") return 'I4';
    if (type == "bigint") return 'I8';
    if (type == "date") return 'D';
    if (type.contains("timestamp")) return 'DT';
    if (type.contains("time with time zone")) return 'H';
    if (type == "real") return 'F4';
    if (type == "double precision") return 'F8';
    if (type == "numeric" || type == "decimal") return 'N($radix,$scale)';
    return type;
  }

  // ? PAra DRow
  static String getTipoDart(String type) {
    if (type == "ARRAY_INT") {
      return 'List<int>';
    }
    if (type == "ARRAY_TEXT") {
      return 'List<String>';
    }
    if (type == "ARRAY_JSONB") {
      return 'List<dynamic>';
    }
    if (type == "ARRAY_JSON") {
      return 'List<dynamic>';
    }

    if (type.contains("JSONB") || type.contains("JSON")) {
      return 'Map<String, dynamic>';
    }

    if (["smallint", "integer"].contains(type)) {
      return 'int';
    }
    if (type.contains("varying") || type.contains("text")) {
      return 'String';
    }

    // "double precision" ...
    if (type.contains("double") || type.contains("numeric")) {
      return 'double';
    }

    if (type.contains("timestamp") || type.contains("date") || type.contains("time")) {
      return 'DateTime?';
    }

    return type;
  }

  static String getDefectoDart(String type) {
    if (type == "ARRAY_INT" || type == "ARRAY_TEXT") {
      return '[]';
    }

    if (["smallint", "integer"].contains(type)) {
      return "0";
    }

    if (type.contains("JSONB") || type.contains("JSON")) {
      return "{}";
    }

    if (type.startsWith("bit varying")) {
      return "";
    }

    if (type == "Uint8List") {
      return "Uint8List.fromList([])";
    }

    if (type.startsWith("character varying") || type.startsWith("text")) {
      return "''";
    }

    // "double precision" ...
    if (type.contains("double") || type.contains("numeric")) {
      return "0";
    }

    if (type.contains("timestamp") || type.contains("date") || type.contains("time")) {
      return "";
    }

    return "";
  }

  static String getNameVariable(String campo) {
    String cFinal = "";
    List<String> lstPartes = campo.split("_");
    for (String it in lstPartes) {
      cFinal += it.proper;
    }
    cFinal = cFinal.substring(0, 1).toLowerCase() + cFinal.substring(1);
    if (cFinal == "final") cFinal = "finalStr"; //? Por ser palabra reservada
    return cFinal;
  }

  static printInfo(dynamic info) {
    if (kDebugMode) {
      print(info);
    }
  }

  static bool isClaseBase(String tabla) {
    return [
      "areas_venta", "areas_compra", "articulos", "proveedores", "clientes", "fabricantes", "art_delegaciones", "veterinarios", //
      "impuestos", "empresas", "cuentas", "personal", "almacenes", "estantes", "art_stocks", //
      "doc_pro", "tecnicos", "perfiles", "contactos_externos", "transportistas", "usuarios", "puestos", "efectos", "art_lotes", //
    ].contains(tabla);
  }

  static String nombreKeyClasesBase(String tabla, String tablaProper) {
    if (isClaseBase(tabla)) {
      return "${tablaProper}Part";
    }
    return tablaProper;
  }
}
