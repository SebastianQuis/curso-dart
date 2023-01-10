import 'dart:io';
main() {
  stdout.writeln('Digite su edad');
  int edad = int.parse( stdin.readLineSync()! );

  if ( edad < 18) {
    stdout.writeln('menor de edad');
  } else if ( edad < 21) {
    stdout.writeln('mayor de edad');
  } else {
    stdout.writeln('ciudadano');
  }
}