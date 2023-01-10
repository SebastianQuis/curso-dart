import 'dart:io';
import 'dart:math';
main() {
  
  int random = Random().nextInt(10); // netInt numero mayor, no incluye 10, incluye 0
  print(random);

  switch (random) {
    case 0:
      stdout.writeln('Lunes');
      break;
    case 1:
      stdout.writeln('Martes');
      break;
    case 2:
      stdout.writeln('Miercoles');
      break;
    case 3:
      stdout.writeln('Jueves');
      break;
    case 4:
      stdout.writeln('Viernes');
      break;
    case 5:
      stdout.writeln('Sabado');
      break;
    case 6:
      stdout.writeln('Domingo');
      break;
    default:
      stdout.writeln('No es día de semana');
  }

}