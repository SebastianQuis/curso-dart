import 'dart:io';
main() {

  stdout.writeln('¿Cuál es tu nombre?'); // salida en consola
  String? nombre = stdin.readLineSync() ?? 'No hay valor'; // obtiene info de consola
  
  print(nombre);  
}