import 'dart:io';
main() async {

  // String path = await leerArchivo('\\4_tipos_no_comunes.dart\\assets\\personas.txt');
  // await leerArchivo('\\4_tipos_no_comunes.dart\\assets\\personas.txt').then(print);
  await leerArchivo('\\4_tipos_no_comunes.dart\\assets\\personas.txt').then(print);

  // print(path);
  print('fin del main');
  
}

Future<String> leerArchivo( String path ) async {
  File file = File( Directory.current.path + path);
  return file.readAsString();
}