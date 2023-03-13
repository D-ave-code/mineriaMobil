import 'dart:convert';

class Sintomas {
  Sintomas({
    required this.id,
    required this.cedula,
    required this.temperatura,
    required this.edad,
    required this.dolorCabeza,
    required this.conjuntivitis,
    required this.malestarGeneral,
    required this.gangliosHinchados,
    required this.tos,
    required this.moqueo,
    required this.dolorGarganta,
    required this.diarrea,
    required this.vomito,
    required this.nauseas,
    required this.comezon,
    required this.perdidaApetito,
    required this.dolorTragar,
    required this.hinchazon,
    required this.hinchazonBoca,
    required this.dolorAbdominal,
    required this.escalofrio,
    required this.perdidaGusto,
    required this.dolorDentadura,
    required this.cara,
    required this.torso,
    required this.cabeza,
    required this.extremidadesSuperiores,
    required this.extremidadesInferiores,
    required this.genitales,
    required this.manos,
    required this.boca,
    required this.pies,
    required this.image,
    required this.nombre,
    required this.apellido,
    required this.sexo,
    required this.infecOid,
  });

  int id = 0;
  String cedula;
  double temperatura;
  int edad = 0;
  int dolorCabeza = 0;
  int conjuntivitis = 0;
  int malestarGeneral = 0;
  int gangliosHinchados = 0;
  int tos = 0;
  int moqueo = 0;
  int dolorGarganta = 0;
  int diarrea = 0;
  int vomito = 0;
  int nauseas = 0;
  int comezon = 0;
  int perdidaApetito = 0;
  int dolorTragar = 0;
  int hinchazon = 0;
  int hinchazonBoca = 0;
  int dolorAbdominal = 0;
  int escalofrio = 0;
  int perdidaGusto = 0;
  int dolorDentadura = 0;
  int cara = 0;
  int torso = 0;
  int cabeza = 0;
  int extremidadesSuperiores = 0;
  int extremidadesInferiores = 0;
  int genitales = 0;
  int manos = 0;
  int boca = 0;
  int pies = 0;
  String image = '';
  String nombre = '';
  String apellido = '';
  String sexo = '';
  int infecOid = 0;

  factory Sintomas.fromJson(Map<String, dynamic> json) => Sintomas(
        id: json["id"],
        cedula: json["cedula"],
        temperatura: json["temperatura"]?.toDouble(),
        edad: json["edad"],
        dolorCabeza: json["dolorCabeza"],
        conjuntivitis: json["conjuntivitis"],
        malestarGeneral: json["malestarGeneral"],
        gangliosHinchados: json["gangliosHinchados"],
        tos: json["tos"],
        moqueo: json["moqueo"],
        dolorGarganta: json["dolorGarganta"],
        diarrea: json["diarrea"],
        vomito: json["vomito"],
        nauseas: json["nauseas"],
        comezon: json["comezon"],
        perdidaApetito: json["perdidaApetito"],
        dolorTragar: json["dolorTragar"],
        hinchazon: json["hinchazon"],
        hinchazonBoca: json["hinchazonBoca"],
        dolorAbdominal: json["dolorAbdominal"],
        escalofrio: json["escalofrio"],
        perdidaGusto: json["perdidaGusto"],
        dolorDentadura: json["dolorSentadura"],
        cara: json["cara"],
        torso: json["torso"],
        cabeza: json["cabeza"],
        extremidadesSuperiores: json["extremidadesSuperiores"],
        extremidadesInferiores: json["extremidadesInferiores"],
        genitales: json["genitales"],
        manos: json["manos"],
        boca: json["boca"],
        pies: json["pies"],
        image: json["image"],
        nombre: json["nombre"],
        apellido: json["apellido"],
        sexo: json["sexo"],
        infecOid: json["infecOid"]
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "cedula": cedula,
        "temperatura": temperatura,
        "edad": edad,
        "dolorCabeza": dolorCabeza,
        "conjuntivitis": conjuntivitis,
        "malestarGeneral": malestarGeneral,
        "gangliosHinchados": gangliosHinchados,
        "tos": tos,
        "moqueo": moqueo,
        "dolorGarganta": dolorGarganta,
        "diarrea": diarrea,
        "vomito": vomito,
        "nauseas": nauseas,
        "comezon": comezon,
        "perdidaApetito": perdidaApetito,
        "dolorTragar": dolorTragar,
        "hinchazon": hinchazon,
        "hinchazonBoca": hinchazonBoca,
        "dolorAbdominal": dolorAbdominal,
        "escalofrio": escalofrio,
        "perdidaGusto": perdidaGusto,
        "dolorDentadura": dolorDentadura,
        "cara": cara,
        "torso": torso,
        "cabeza": cabeza,
        "extremidadesSuperiores": extremidadesSuperiores,
        "extremidadesInferiores": extremidadesInferiores,
        "genitales": genitales,
        "manos": manos,
        "boca": boca,
        "pies": pies,
        "image": image,
        "nombre": nombre,
        "apellido": apellido,
        "sexo": sexo,
        "infecOid": infecOid,
      };
}