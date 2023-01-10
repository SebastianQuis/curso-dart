class Figura {
  
  int? base;
  int? altura;
  int? area;
  String? tipo; // CUADRADO: BASE = ALTURA, RECTANGULO: BASE != ALTURA

  factory Figura( int base, int altura ) { // REGRESAR UNA INSTANCIA CON UN DETERMINADO PROCEDIMIENTO
    if (base == altura) {
      return Figura.cuadrado(base);
    } else {
      return Figura.rectangulo(base, altura);
    }
  }

  Figura.cuadrado( int base ){ // CONSTRUCTORES CON NOMBRE
    this.base   = base;
    this.altura = base;
    this.area   = base * base;
    this.tipo   = 'Cuadrado';
  }
  
  Figura.rectangulo( int base, int altura){ // CONSTRUCTORES CON NOMBRE
    this.base   = base;
    this.altura = altura;
    this.area   = base * altura;
    this.tipo   = 'Rectangulo';
  }

  @override
  String toString() => {'base': base, 'altura': altura, 'area': area, 'tipo': tipo}.toString();
}

main() {
  final figura = Figura(10, 10);

  print(figura);
}