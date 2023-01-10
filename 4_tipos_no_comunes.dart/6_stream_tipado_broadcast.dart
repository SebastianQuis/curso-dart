import 'dart:async';
main() {
  
  // final streamController = StreamController<String>();
  final streamController = StreamController<String>.broadcast(); // para tener multiples listen
  List<String> frutas = [];
  List<String> frutas2 = [];

  streamController.stream.listen((data) { // escuchando la data agregada
    print('Agregando.. $data');
    frutas.add(data);},
    onError: (error) => print(error),
    onDone: () => print('Misión completa'),
    cancelOnError: false, // true - evita agregar despues de error!
  );

  streamController.stream.listen((data) { // escuchando la data agregada
    print('Agregando 2: $data');
    frutas2.add(data);},
    onError: (error) => print('Error 2: $error'),
    onDone: () => print('Misión completa 2'),
    cancelOnError: false, // true - evita agregar despues de error!
  );

  streamController.add('mandarina'); // agregando data
  streamController.add('granadilla');
  streamController.add('naranja');  

  streamController.addError('Error de frutas!!!'); // asociado con onError
  streamController.add('papaya'); // no agrega por propiedad cancelOnError  
  
  streamController.sink.close();// evita agregar más, definitivamente!! 

  Future.delayed(Duration(seconds: 2), () => print('Frutas: $frutas')); 
  Future.delayed(Duration(seconds: 2), () => print('Frutas: $frutas2')); 
  
  print('Fin del main'); // esto aparece primero
}