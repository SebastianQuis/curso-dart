mixin Logger { // NO PUEDEN SER INSTANCIADOS, NO PUEDE TENER CONSTRUCTORES

  void imprimir( String texto ) {
    final hoy = DateTime.now(); // FECHA, HORA Y MINUTO
    print('-- $hoy $texto --');
  }
}

mixin Logger2 { // NO PUEDEN SER INSTANCIADOS, NO PUEDE TENER CONSTRUCTORES

  void imprimir2( String texto ) {
    final hoy = DateTime.now(); // FECHA, HORA Y MINUTO
    print('-- $hoy $texto --');
  }
}

abstract class Astro with Logger, Logger2 {
  
  String? nombre;
  
  Astro() {
    // imprimir('-- Init del Astro --');
    imprimir2('-- Init del Astro --');
  }

  void existo() {
    imprimir2('-- existo --');
  }

}

class Luna extends Astro {

  Luna( String nombre ) {
    this.nombre = nombre;
    // imprimir('$nombre');
    existo();
    imprimir2('$nombre');
  }
}

main() {
  
  final luna = Luna( 'Soy luna' );
  
  print(luna);
  // print(luna);
  // luna.existo();
}