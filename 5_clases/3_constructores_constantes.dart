class Ubicacion {
  final double latitud;
  final double longitud;

  const Ubicacion( this.latitud, this.longitud );
}
main() {
  
  final rokys  = Ubicacion(18.290, 19.200);
  final pardos = Ubicacion(18.290, 19.201);
  final norkys = Ubicacion(18.290, 19.201);
  
  // print(rokys == pardos); // FALSE
  // print(pardos == norkys); // FALSE

  const kfc         = Ubicacion(18.290, 19.200);
  const bembos      = Ubicacion(18.290, 19.201);
  const burguerKing = Ubicacion(18.290, 19.201);

  print(kfc == bembos); // FALSE
  print(bembos == burguerKing); // TRUE: TIENE EL MISMO DATO
}