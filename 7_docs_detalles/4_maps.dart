main() {
  Map persona = {
    'nombre'   : 'Sebastian',
    'apellido' : 'Gonzales',
    'edad'     : 24,
  };

  Map direccion = {
    'pais'   : 'Perú',
    'ciudad' : 'Lima',
  };

  print('persona:        $persona');
  print('length:         ${persona.length}');
  print('keys - list:    ${persona.keys.toList()}');
  print('value:          ${persona.values}');

  persona.addAll(direccion);
  print('addAll:         ${persona}');
  persona.remove('ciudad');
  print('remove:         ${persona}');

  // persona.removeWhere((key, value) => (key == 'edad') ? true : false);
  // print('removeWhere:    $persona'); // REMUEVE DEPENDE DEL KEY O VALUE

  persona.forEach((key, value) => print('for each:       $key - $value') );

  final Map newPersona = persona.map((key, value) { // BARRE LAS PROPIEDADES Y GUARDA EN UNO NUEVO
    return MapEntry(key, value.toString().toUpperCase()); 
  });

  print(persona);
  print(newPersona);
}