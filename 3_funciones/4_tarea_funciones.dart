/** 
 *  Dado el siguiente código 
 *    Optimizarlo lo más posible usando funciones
 *    y todo lo visto en el curso
 * 
 *  Ver el primer ejemplo:
*/
import 'dart:io';

void preguntar(String pregunta) => stdout.writeln(pregunta);
String respuesta() => stdin.readLineSync() ?? '';

double deducciones( double salario ) => salario *= 0.15;
double salarioNeto( double salario, double deducciones) => salario - deducciones;

void procesarUsuario( double salario, int numero) {
  preguntar('=========== Usuario $numero =============');
  
  preguntar('¿Cúal es su nombre?');
  String nombre = respuesta();

  preguntar('¿Qué edad tienes?');
  String edad = respuesta();
  
  preguntar('¿En qué país naciste?');
  String pais = respuesta();

  final Map<String, dynamic> usuario = {
    'nombre': nombre,
    'edad'  : edad,
    'pais'  : pais
  };

  preguntar('Usuario $numero sin deducciones');
  preguntar( usuario.toString() );

  double deduccion    = deducciones(salario);
  double salarioFinal = salarioNeto(salario, deduccion);
  
  usuario['salario']     = salario;
  usuario['deducciones'] = deduccion;
  usuario['salarioNeto'] = salarioFinal;

  preguntar(usuario.toString());
}

main() {

  procesarUsuario(1500, 1);
  procesarUsuario(1800, 2);

}

