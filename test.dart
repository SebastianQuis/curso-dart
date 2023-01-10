class Producto {

  String? nombre;
  String? descripcion;
  double? precio;

  // Fruta(this.nombre,this.descripcion,this.precio);

  void imprimirFrutas() => print({'nombre': this.nombre,'descripcion': this.descripcion,'precio': this.precio});
}

class Galletas extends Producto {
  String? estado;

  Galletas( nombre, descripcion, precio, this.estado){
    this.nombre = nombre;
    this.descripcion = descripcion;
    this.precio = precio;
  }

  void imprimirGalletas() => print({'nombre': this.nombre,'descripcion': this.descripcion,'precio': this.precio,'estado': this.estado});
}


main() {

  final margarita = Galletas('Margarita', 'Galleta dulce', 1.2, 'bueno' );
  
  margarita.imprimirGalletas();
  
}