import 'dart:io';
main() {
  String continuar = 'y';
  int contador = 0;
  
  // while (continuar == 'y') {
  //   stdout.writeln('Contador: $contador');
  //   stdout.writeln('Desea continuar? (y/n)');
  //   continuar = stdin.readLineSync() ?? 'n';
  //   contador++;
  // }

  do { //si o si se hará una vez
    contador++;
    stdout.writeln('Contador: $contador');
    stdout.writeln('Desea continuar? (y/n)');
    continuar = stdin.readLineSync() ?? 'n';
  } while (continuar == 'y');

}