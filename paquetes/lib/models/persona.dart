import 'dart:convert';

class Persona {
    Persona({
        required this.id,
        required this.email,
        required this.firstName,
        required this.lastName,
        required this.avatar,
    });

    int id;
    String email;
    String firstName;
    String lastName;
    String avatar;

    factory Persona.fromJson(String str) => Persona.fromMap(json.decode(str));
    
    factory Persona.fromMap(Map<String, dynamic> json) => Persona(
        id        : json['id'],
        email     : json['email'],
        firstName : json['first_name'],
        lastName  : json['last_name'],
        avatar    : json['avatar'],
    );
}

class Support {
    Support({
        required this.url,
        required this.text,
    });

    String url;
    String text;

    factory Support.fromJson(String str) => Support.fromMap(json.decode(str));

    factory Support.fromMap(Map<String, dynamic> json) => Support(
        url   : json['url'],
        text  : json['text'],
    );
}
