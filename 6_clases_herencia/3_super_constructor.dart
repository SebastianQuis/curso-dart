class Persona {
  String nombre;
  int edad;

  Persona( this.nombre, this.edad);

  void imprimirInfo() => print('nombre: $nombre, edad: $edad');
}

class Cliente extends Persona { 
  String? direccion;
  List ordenes = ['manzanja','pera','naranja'];
  
  Cliente( int edadActual, String nombreActual ):
    super(nombreActual, edadActual); // SUPER: HACE REFERENCIA A LA CLASS PERSONA (CLASS PADRE)

  // OVERRIDE
  @override
  void imprimirInfo() {
    // super.imprimirInfo();
    print('Cliente: $nombre - $edad');
  }
}

main() {
  final sebas = Cliente(23, 'Alexander');
  // sebas.imprimirInfo();

  sebas.imprimirInfo();
}