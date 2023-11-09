import 'package:flutter/foundation.dart';
import 'package:generador_sql_tablas/global/extension_metodos.dart';

class Utils {
  // Devuelve una cadena en base a un tipo de dato no variables: CamposSQL y otro tipo de datos
  static String getDeclaracionVars(String cTipo, List<String> lstVars) {
    cTipo += " ";
    String cFila = cTipo, cTodo = "";
    for (String campo in lstVars) {
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

  static String getTipoSQL(String type, int numMaxStr, int radix, int scale) {
    if (type.contains("varying")) return 'C$numMaxStr';
    if (type == "smallint") return 'I2';
    if (type == "integer") return 'I4';
    if (type == "bigint") return 'I8';
    if (type == "date") return 'D';
    if (type.contains("timestamp")) return 'DT';
    if (type == "real") return 'F4';
    if (type == "double precision") return 'F8';
    if (type == "numeric" || type == "decimal") return 'N($radix,$scale)';
    return type;
  }

  // ? PAra DRow
  static String getTipoDart(String type) {
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
    if (["smallint", "integer"].contains(type)) {
      return "0";
    }
    if (type.contains("varying") || type.contains("text")) {
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
    return ["articulos", "proveedores", "clientes", "fabricantes", "art_delegaciones", "veterinarios"].contains(tabla);
  }

  static String nombreKeyClasesBase(String tabla, String tablaProper) {
    if (isClaseBase(tabla)) {
      return "${tablaProper}Part";
    }
    return tablaProper;
  }

}
