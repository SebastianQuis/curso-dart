class Frutas {

  // STATIC: SOLO PUEDO ACCEDER A LA PROPIEDAD O METODO (STATIC) SIN INSTANCIAR LA CLASE
  static const List<String> listado = ['Pera', 'Granadilla', 'Mandarina'];

  static void imprimirFrutas() => listado.forEach(print);

  List<String> listado2 = ['cebolla', 'tomate', 'papa']; // SE PUEDE INSTANCIAR POR NO SER STATIC
}
main() {
  // Frutas.listado[0] = 'Albaricoque'; // MAL SI ES CONST
  // Frutas.listado.add('albaricoque'); // MAL SI ES CONST

  Frutas.imprimirFrutas();

  final frutas = Frutas();
  print(frutas.listado2);
}