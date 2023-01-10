void main() {
  final List<String> nombres = ['sebastian','oliver','maria']; // final agrega y cambia valores a una lista
  const List<String> nombres2 = ['sebastian','oliver','maria']; // const nunca va a cambiar, ni agregar valores

  nombres.add('pepito');
  nombres[0] = 'alexito';
  // nombres2.add('alexito'); // no se puede
  // print(nombres);

  late final String fruta; // usando late
  fruta = 'mandarina';
  print(fruta);
  print(saludar('alex', 'rey'));
  
  
}

/// Recibe un [nombre] y se concatena con el [mensaje]
saludar( String nombre, String mensaje){
  return 'bienvenido $nombre: $mensaje';
}