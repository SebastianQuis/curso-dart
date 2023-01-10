class Servicio {

  // MANTIENE EN MEMORIA LA INSTANCIA DE LA CLASE SERVICIO._INTERNAL
  static final Servicio _singleton = Servicio._internal();

  factory Servicio() { // GENERAR UNA SOLA INSTANCIA
    return _singleton;
  }

  Servicio._internal(){
    print('servicio internal');
  } // CONSTRUCTOR CON NOMBRE PRIVADO: GENERA UNA INSTANCIA

  String url = 'https://abc';
  String key = 'ABC123';

}