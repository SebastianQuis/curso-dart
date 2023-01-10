import 'clases/6_servicio.dart';
main() {
  
  final spotifyServicio1 = Servicio();
  spotifyServicio1.url = 'http://api.spotify.com';

  final spotifyServicio2 = Servicio();
  spotifyServicio2.url = 'http://api.spotify.com/v2';

  print( spotifyServicio1 == spotifyServicio2 ); // APUNTAN AL MISMO ESPACIO DE MEMORIA

  print( spotifyServicio1.url);
  print( spotifyServicio2.url);

}