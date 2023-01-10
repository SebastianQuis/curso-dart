main() {
  
  int a = 10, b = 20;
  // print(sumar(a, b));

  List<int> lista = [1,2,3,4,4,5,6,6,7,8,10,10];
  var nuevaLista = lista.where((numero) => numero > 4);
  print(nuevaLista.toSet()); // set: trabajan con datos unicos.

}

int sumar( int x, int y) => x+y; // lambda o de flecha