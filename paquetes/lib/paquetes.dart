import 'dart:core';

import 'package:http/http.dart' as http;
import 'package:paquetes/models/pais.dart';

import 'models/usuarios_respuesta.dart';

void getResponse() {
  final baseUrl = 'https://reqres.in/api/users?page=2';
  http.get( Uri.parse(baseUrl) ).then((res) {
    
    final respuesta = Usuarios.fromJson(res.body);
    print(respuesta);

  });
  // final responseJson = jsonDecode(res.body); // VOLVIENDO A LA ESTRUCTURA DEL JSON
  // print('page: ${responseJson['page']}'); // 1
  // print('per_page: ${responseJson['per_page']}'); // 6 
  // print('id del 3er elemento: ${responseJson['data'][2]['id']}'); // 3
}

void getResponsePais() async {
  final baseUrl = 'https://restcountries.com/v2/alpha/col';
  await http.get( Uri.parse(baseUrl) ).then((res) {
    final respuesta = Pais.fromJson(res.body);
    print('=================================');
    print('Pais: ${ respuesta.name }'); 
    print('Población: ${ respuesta.population }'); 
    print('Fronteras:');
    respuesta.borders!.forEach((fronteraPais) => print('- $fronteraPais'));
    print('languages: ${ respuesta.languages[0].nativeName }'); 
    print('Latitud : ${ respuesta.latlng[0] }'); 
    print('Longitud: ${ respuesta.latlng[1] }'); 
    print('Moneda: ${ respuesta.currencies[0].name }'); 
    print('Bandera: ${ respuesta.flag }'); 
    print('================================='); 
  }).catchError(print);
}



