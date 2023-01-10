import 'clases/1_alumno.dart';
main() {
  
  final alumno = Alumno('Alexandra','Carrasco', 19);
  final alumno2 = Alumno.bueno('alumno sobresaliente');
  final alumno3 = Alumno.malo( nombre: 'Andres', apellido: 'Arias');

  // alumno.nombre = 'Sebastian';
  // alumno.apellido = 'Carrasco';
  // alumno.edad = 17;
  // alumno.comentario = 'SI hay comentario';
  // alumno.comentario ??= 'no hay comentario';

  // alumno..nombre       = 'Juan Diego'
  //         ..apellido     = 'Izaguirre' // .. OPERADOR DE CASCADA
  //         ..edad         = 22;
          // ..comentario ??= 'no hay comentario';
  
  print(alumno3);

  alumno.setComentario = 'cambié el valor';
  // print(alumno.getComentario);
  // print(alumno);
}