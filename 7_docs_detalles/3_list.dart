import 'dart:math';

main() {
  List<String> frutas = ['manzana','papaya','pera'];
  List? frutasVacia; // NULL
  List<int> numeros = [1,3,2,4,5];
  List<String> nombres = ['peter','alvaro','eduardo','viviana'];

  print('Length:       ${frutas.length}');
  print('First:        ${frutas[0]} - ${frutas.first}');
  print('Last:         ${numeros.last}');
     
  print('isEmpty:      ${frutasVacia?.isEmpty}'); // NULL - LIST EMPTY
  print('isNotEmpty:   ${nombres.isNotEmpty}');

  print('asMap:        ${nombres.asMap()[2]}'); 

  print('indexOf:      ${nombres.indexOf('eduardoS')}'); // POSICION DEL ELEMENTO - -1 NO EXISTE
  
  int mayor2 = numeros.indexWhere((numero) => numero > 2 ? true : false);
  
  print('indexWhere:   $mayor2'); // REGRESA LA POSICION DEL ELEMENTO MAYOR A 2 - -1 NO EXISTE

  print('remove:       ${nombres.remove('eduardo')}'); // TRUE SI EXISTE Y REMUEVE EL VALOR - FALSE NO EXISTE EL VALOR
  print('removido:     $nombres'); // 'eduardo' REMOVIDO

  nombres.shuffle(); // REMOVER LA LISTA ALEATORIAMENTE EL ORDEN
  print('shuffle:      $nombres'); // REMOVIDO

  nombres.sort(); // ORDENAR LA LISTA ALFABETICAMENTE
  print('sort:         $nombres'); 
  
  nombres.forEach((nombre) => print('foreach:      ${nombre.toUpperCase()}')); // ITERABLE
  
  final newList = nombres.map((nombre) => nombre.toUpperCase()).toList();
  print('map - newList $newList');

  // Map mapa = nombres.asMap();
  // print('asMap:        ${mapa[2]}'); 
} 