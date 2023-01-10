import 'dart:async';
main() {
  
  StreamController streamController = StreamController();
  List<String> frutas = [];


  streamController.stream.listen((data) { // escuchando la data agregada
    print('Agregando.. $data');
    frutas.add(data);},
    onError: (error) => print(error),
    onDone: () => print('Misión completa'),
    cancelOnError: true, // true - evita agregar despues de error!
  );

  streamController.add('mandarina'); // agregando data
  streamController.add('granadilla');
  streamController.add('naranja');  

  streamController.addError('Error de frutas!!!'); // asociado con onError
  streamController.add('papaya'); // no agrega por propiedad cancelOnError  
  
  streamController.sink.close();// evita agregar más, definitivamente!! 

  Future.delayed(Duration(seconds: 3), () => print('Frutas: $frutas')); 
  
  print('Fin del main'); // esto aparece primero
}