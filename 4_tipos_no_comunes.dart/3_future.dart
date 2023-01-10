import 'dart:io';
main() {

  Future<String> timeout = Future.delayed( Duration(milliseconds: 1000), () {
    // print('1000 milliseconds..');
    return 'termina el future';
  });

  // timeout.then((value) => print(value));
  // timeout.then(print);
  // print('Fin del main');

  File file = File( Directory.current.path + '\\4_tipos_no_comunes.dart\\assets\\personas.txt');
  print(Directory.current.path);
  
  // Future f = file.readAsString();
  // f.then((value) => print(value));

  String f = file.readAsStringSync();
  // print(f);
}