// ========== ARGUMENTOS - POSICIONALES
void saludar(String mensaje, [String nombre ='no insertó nombre', int edad = 20] ){ // opcional
  print('$mensaje $nombre - $edad');
}

// ========== ARGUMENTOS - POR NOMBRE
void saludar2(String apellido, { required String mensaje, String? nombre, int? edad }){
  print('Saludar2: $mensaje $nombre $apellido - tu edad es: $edad');
}

// ========== ARGUMENTOS - POR VALOR Y REFERENCIA
String mayuscula(String nombre){
  return nombre.toUpperCase(); 
}

Map<String,String> capitalizarMapa( Map<String, String> mapa){
  mapa = {...mapa}; // rompe la referencia, crea un nuevo mapa
  mapa['nombre'] = mapa['nombre']?.toUpperCase() ?? 'no hay nombre';
  return mapa;
}

main() {
  // Los objetos(mapas, listas, clases) son enviados por referencia.
  Map<String, String> persona = {
    'nombre': 'Sebastian',
    'edad'  : '24',
  };

  print(persona);
  print(capitalizarMapa(persona));

  // saludar2('Gonzales', edad: 12, nombre: 'Eliana', mensaje: 'Bienvenido');
  
  // String nombreMayuscula = mayuscula('alfredo');
  // print(nombreMayuscula);
}