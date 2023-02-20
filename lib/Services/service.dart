// ignore: file_names
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mineria/Actividades/actividadesApp.dart';
import 'package:mineria/Actividades/datosGenerales.dart';
import 'package:mineria/Actividades/partesCuerpo.dart';
import 'package:mineria/Actividades/sintomas.dart';
import 'package:mineria/Actividades/sintomasAdicionales.dart';
import 'package:mineria/Actividades/sintomasGastrointestinales.dart';
import 'package:mineria/Actividades/sintomasGenerales.dart';
import 'package:mineria/Actividades/sintomasLocales.dart';
import 'package:mineria/Actividades/sintomasRespiratorios.dart';

class UserModel {
  UserModel() {}
  String? mensajePet;

  Future obtenerLibros() async {
    try {
      String uriC = 'http://192.168.100.240:7001/books';
      String uriD = 'http://192.168.100.155:8000/datos/';
      var url = Uri.parse(uriD);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        // ----------------
        var data = jsonDecode(response.body);
        // Sintomas actividad = Sintomas.fromJson(data);
        return data["msg"];
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future ingresarLibros(
      SintomasGenerales sg,
      SintomasRespiratorios sr,
      SintomasGastrointestinales sgi,
      SintomasLocales sl,
      SintomasAdicionales sa,
      partesCuerpo pc,
      String image,
      datosGenerales dg) async {
    try {
      var data = Sintomas(
        boca: pc.boca,
        cabeza: pc.cabeza,
        cara: pc.cara,
        cedula: dg.cedula,
        comezon: sl.comezon,
        conjuntivitis: sl.conjuntivitis,
        diarrea: sgi.diarrea,
        dolorAbdominal: sgi.dolorAbdominal,
        dolorCabeza: sg.dolorCabeza,
        dolorDentadura: sa.dolorDentadura,
        dolorGarganta: sr.dolorGarganta,
        dolorTragar: sa.dolorTragar,
        edad: dg.edad,
        escalofrio: sg.escalofrio,
        extremidadesInferiores: pc.extremidadesInferiores,
        extremidadesSuperiores: pc.extremidadesSuperiores,
        gangliosHinchados: sg.gangliosHinchados,
        genitales: pc.genitales,
        hinchazon: sl.hinchazon,
        hinchazonBoca: sl.hinchazonBoca,
        id: 4,
        malestarGeneral: sg.malestarGeneral,
        manos: pc.manos,
        moqueo: sr.moqueo,
        nauseas: sgi.nauseas,
        perdidaApetito: sg.perdidaApetito,
        perdidaGusto: sa.perdidaGusto,
        pies: pc.pies,
        temperatura: sg.temperatura,
        torso: pc.torso,
        tos: sr.tos,
        vomito: sgi.vomito,
        image: image,
        nombre: dg.nombre,
        apellido: dg.apellido,
        sexo: dg.sexo,
        infecOid: 0,
      );
      var json = data.toJson();

      String uriC = 'http://192.168.100.240:7001/books';
      String uriD = 'http://192.168.100.155:8000/datos/';

      var url = Uri.parse(uriD);
      var response = await http.post(url,
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(json));

      print('Response status: ${response.statusCode}');
      var mensaje = jsonDecode(response.body);
      print(mensaje["msg"]);
      mensajePet = mensaje["msg"];
      print(await http.read(Uri.http(uriD)));
    } catch (e) {
      print(e);
    }
  }
}
