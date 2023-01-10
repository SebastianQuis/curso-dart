main() {
  
  // : funcion dentro de otra funcion, conocido como argumento
  obtenerUsuario( '200', (Map usuario){ // callback: (Map usuario)
    print(usuario);
  });
}

void obtenerUsuario(String id, Function callback) {

  Map persona = {
    'id'     : id,
    'nombre' : 'Sebastian',
  };

  callback(persona);
}