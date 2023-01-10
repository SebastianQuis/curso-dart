import 'dart:convert';

import 'package:paquetes/models/persona.dart';

class Usuarios {
    Usuarios({
        required this.page,
        required this.perPage,
        required this.total,
        required this.totalPages,
        required this.data,
        required this.support,
    });

    int page;
    int perPage;
    int total;
    int totalPages;
    List<Persona> data;
    Support support;

    factory Usuarios.fromJson(String str) => Usuarios.fromMap(json.decode(str));

    factory Usuarios.fromMap(Map<String, dynamic> json) => Usuarios(
        page       : json['page'],
        perPage    : json['per_page'],
        total      : json['total'],
        totalPages : json['total_pages'],
        data       : List<Persona>.from(json['data'].map((x) => Persona.fromMap(x))),
        support    : Support.fromMap(json['support']),
    );
}