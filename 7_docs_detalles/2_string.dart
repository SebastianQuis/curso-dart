// HERRAMIENTA = PROPIEDAD
// CUBO = MÉTODO
import 'dart:io';

main() {
  
  String nombre = 'Sebastian';
  String apellido = 'Gallegos';
  String nombreCompleto = '$nombre $apellido';
  String letra = 'DE';

  print('Length:             ${apellido.length}');
  print('Contains ast:       ${nombre.contains('ast',3)}'); // RETORNA BOOL
  print('EndsWith:           ${nombre.endsWith('an')}'); // RETORNA BOOL
  
  // TRUE = 0 // FALSE = 1 // -1 = EXISTE VARIABLE
  print('CompareTo Fernando: ${nombre.compareTo('Fernando')}');

  print('PadLeft:            ${apellido.padLeft(15,'x')}'); // 10:NUMERO DE LETRA TOTAL QUE CONTIENE, X: RELLENO
  print('PadRight:           ${apellido.padRight(15,'x')}'); // 10:NUMERO DE LETRA TOTAL QUE CONTIENE, X: RELLENO
      
  print('Operador []:        ${ nombre[1] }'); // COMPORTAMIENTO DE UNA LISTA
  print('Operador *:         ${ nombre * 3 }'); // MULTIPLICANDO N VECES EL VALOR
  print('Operador *:         ${ '*' * 5 }');

  print('ReplaceAll *:       ${ nombre.replaceAll('a', 'A') }'); // REEMPLAZAR UNA O UN CONJUNTO DE LETRAS

  print('SubString:          ${ nombre.substring(0,2)}..'); // RETORNA UN PARTE DE UN STRING
  print('IndexOf:            ${ nombre.indexOf('t')}'); // RETORNA LA POSICION O EL VALOR ESTABLECIDO
  print('Split:              ${ nombreCompleto.split(' ')}'); // CORTA LA LETRA ESTABLECIDA Y LO INSERTA EN UN SUBSTRING
  print('Split:              ${ nombreCompleto.split(' ')[1]}');
  
  // CAPITALIZANDO ULTIMA LETRA
  String palabra = 'fernando';
  int ultimo = palabra.length;
  String palabraFinal  = palabra.substring(0,ultimo-1) + palabra.substring(ultimo-1).toUpperCase();

  print(palabraFinal);

  
}