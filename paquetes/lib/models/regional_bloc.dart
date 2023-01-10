import 'dart:convert';

class RegionalBloc {
    RegionalBloc({
        required this.acronym,
        required this.name,
        required this.otherNames,
        this.otherAcronyms,
    });

    String acronym;
    String name;
    List<String> otherNames;
    List<String>? otherAcronyms;

    factory RegionalBloc.fromJson(String str) => RegionalBloc.fromMap(json.decode(str));

    factory RegionalBloc.fromMap(Map<String, dynamic> json) => RegionalBloc(
        acronym: json["acronym"],
        name: json["name"],
        otherNames: List<String>.from(json["otherNames"].map((x) => x)),
        otherAcronyms: json["otherAcronyms"] == null ? null : List<String>.from(json["otherAcronyms"].map((x) => x)),
    );
}