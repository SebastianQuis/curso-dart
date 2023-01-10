main() {
  // ============= STRING
  // no recomendable utilizar "var" 
  // alt + 92 : \
  String nombre  = 'O\'Sebastian';
  String nombre2 = "O'Sebastian";
  String multilinea = ''' 
    Hola mundo
    $nombre
    $nombre2''';
  // print( multilinea.endsWith('ian') );

  // ============= BOOLEAN
  bool? isActive;
  // bool isNotActive = !isActive;
  // print( isActive! );

  // ============= LIST [] : agrega duplicados
  List<String> frutas = ['manzana', 'pera', 'mandarina'];
  frutas[0] = 'piña';
  frutas.add('granadilla');
  frutas.add('granadilla');
  frutas.addAll(['iterable','iterable','iterable',]);
  var frutasSet = frutas.toSet(); // eliminar datos iguales en lista
  // var result = frutas.any((element) => element == 'mandarina'); // buscar en lista un elemento 
  // Map map = frutas.asMap(); // listas a map
  // frutas.clear();
  // print(map);
  var frutasMap = frutas.asMap();
  // print(frutasMap);
  
  // ============= SETS {} : son como listas, comparten muchos metodos, no agrega duplicados
  Set<String> frutas2 = {'manzana', 'pera', 'mandarina'}; 
  frutas2.add('granadilla');
  frutas2.add('granadilla');
  frutas2.addAll({'iterable','iterable','iterable',});
  // print(frutas2);
  // var frutasMap = frutas2.mpa

  // ============= MAPS : los mapas tienen llave y valor, los sets no.
  Map borrachos = {
    'nombre'   : 'alex',
    'apellido' : 'santiago',
    'edad'     : 23,
  };

  borrachos.addAll(frutasMap);
  print(borrachos);
}
