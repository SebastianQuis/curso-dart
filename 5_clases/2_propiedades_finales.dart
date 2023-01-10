class Cuadrado {
  final double lado;
  final double area;

  Cuadrado( this.lado ) :
    this.area = lado * lado;
}

main() {
  final cuadrado = Cuadrado(10);
  // cuadrado.lado = 100; // NO SE PUEDE POR ES FINAL

  print(cuadrado.area);
}