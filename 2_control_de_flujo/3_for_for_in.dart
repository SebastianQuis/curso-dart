import 'dart:io';
main() {
  // stdout.writeln('Digite el número');
  // int numero = int.parse(stdin.readLineSync()!);
  
  // for (int i = 1; i <= 10; i++) {
  //   stdout.writeln('$numero * $i = ${ numero * i}');
  // }

  List<String> frutas = ['mandarina','granadilla','pera','naranja'];

  for (String fruta in frutas) {
    stdout.writeln(fruta);
  }
}