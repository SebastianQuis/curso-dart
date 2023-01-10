class Alumno { // DENTRO DE UNA CLASE, LAS FUNCIONES Y TODOS SON METODOS
  String? nombre;     // PROPIEDADES
  String? apellido;
  int? edad;
  String? comentario;

  // GETTER Y SETTERS
  String get getComentario => comentario!.toUpperCase();

  set setComentario(String comentario) => comentario = comentario; // SET ES VOID

  // CONSTRUCTORES  
  Alumno(this.nombre, this.apellido, this.edad, {this.comentario = 'sin comentario'});

  // CONSTRUCTOR CON NOMBRE
  Alumno.bueno( this.comentario ) {
    this.nombre = 'Alex';
    this.apellido = 'Santiago';
  } 

  Alumno.malo({ required this.nombre, required this.apellido}) {
    this.comentario = 'Alumno jalado';
  } 

  // MÉTODO
  @override
  String toString() => '$nombre $apellido - $edad - $comentario';
}