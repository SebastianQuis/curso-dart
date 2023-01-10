import 'dart:collection';
main() {

  Queue<int> cola = Queue(); // para procesar uno después de otro
  cola.addAll([10,20,30,40]);

  // print(cola is Set);

  Iterator i = cola.iterator; // asignar en i el indice de las posiciones
  while (i.moveNext()) {
    print( i.current ); // barrer la cola
  }
}