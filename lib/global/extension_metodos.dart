extension TextUtilsStringExtension on String? {
  bool get isVacio => this == null || this!.isEmpty || this!.trim().isEmpty;

  bool get isNotVacio => this != null && this!.isNotEmpty;

  String get toComillasIfNull => (this == null || this!.isEmpty) ? '' : this!;

  String get comillas => '"$this"';
  String get proper => (this!.trim() == "") ? "" :  this!.substring(0,1).toUpperCase() + this!.substring(1);


  String defecto(String valor) {
    if (isVacio) {
      return valor;
    } else {
      return this!;
    }
  }

  bool get isNumeric {
    try {
      double.parse(this!);
    } on FormatException {
      return false;
    }
    return true;
  }
}

extension IntUtilsExtension on int? {
  bool get isVacio => this == null || this == 0;

  bool get isNotVacio => this != null && this != 0;

  int defecto(int valor) {
    if (isVacio) {
      return valor;
    } else {
      return this!;
    }
  }
}

extension ListUtilsExtension on List? {
  bool get isVacio => this == null || this!.isEmpty;

  bool get isNotVacio => this != null && this!.isNotEmpty;
}

extension MapUtilsExtension on Map? {
  bool get isVacio => this == null || this!.isEmpty;

  bool get isNotVacio => this != null && this!.isNotEmpty;
}

