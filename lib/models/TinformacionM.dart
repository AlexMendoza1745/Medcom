// To parse this JSON data, do
//
//     final informacionM = informacionMFromMap(jsonString);

import 'dart:convert';

class InformacionM {
  InformacionM({
    required this.activo,
    required this.cantidadDia,
    this.comentarios,
    required this.fin,
    required this.inicio,
    required this.nombre,
    required this.tiempo,
    required this.uso,
    this.id
  });

  String activo;
  int cantidadDia;
  String? comentarios;
  String fin;
  String inicio;
  String nombre;
  int tiempo;
  String uso;
  String? id;

  factory InformacionM.fromJson(String str) =>
      InformacionM.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory InformacionM.fromMap(Map<String, dynamic> json) => InformacionM(
        activo: json["activo"],
        cantidadDia: json["cantidad_dia"],
        comentarios: json["comentarios"],
        fin: json["fin"],
        inicio: json["inicio"],
        nombre: json["nombre"],
        tiempo: json["tiempo"],
        uso: json["uso"],
      );

  Map<String, dynamic> toMap() => {
        "activo": activo,
        "cantidad_dia": cantidadDia,
        "comentarios": comentarios,
        "fin": fin,
        "inicio": inicio,
        "nombre": nombre,
        "tiempo": tiempo,
        "uso": uso,
      };
}
