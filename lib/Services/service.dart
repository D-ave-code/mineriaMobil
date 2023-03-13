// ignore: file_names
import 'dart:convert';
import 'dart:async';
import 'package:ExamKids/Pages/Frm_Principal.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:ExamKids/Actividades/actividadesApp.dart';
import 'package:ExamKids/Actividades/datosGenerales.dart';
import 'package:ExamKids/Actividades/partesCuerpo.dart';
import 'package:ExamKids/Actividades/sintomas.dart';
import 'package:ExamKids/Actividades/sintomasAdicionales.dart';
import 'package:ExamKids/Actividades/sintomasGastrointestinales.dart';
import 'package:ExamKids/Actividades/sintomasGenerales.dart';
import 'package:ExamKids/Actividades/sintomasLocales.dart';
import 'package:ExamKids/Actividades/sintomasRespiratorios.dart';

class UserModel {
  UserModel() {}
  String? mensajePet;
  String _message = 'Realizando solicitud POST...';

  Future obtenerLibros() async {
    try {
      String uriC = 'http://192.168.100.240:7001/books';
      String uriD = 'http://25.16.73.60:8000/datos/';
      String uriU = 'http://192.168.137.85:8000/datos/';
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

  Future ingresarLibros(context,
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
      String uriD = 'http://25.16.73.60/datos/';
      String uriU = 'http://192.168.137.85:8000/datos/';

      var url = Uri.parse(uriD);
      var response = await http.post(url,
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(json));

      /* if (response.statusCode == 200) {
        var mensaje = jsonDecode(response.body);
        _message = mensaje;
      } else {
        var mensaje = jsonDecode(response.body);
        _message = mensaje;
      } */
      var mensaje = jsonDecode(response.body);
      print(mensaje);
      mensajito(context, mensaje["msg"]);
      print(await http.read(Uri.http(uriD)));
    } catch (e) {
      print(e);
    }
  }

  mensajito(context,String msg) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            contentPadding: EdgeInsets.all(0),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Frm_Principal()));
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      // ignore: prefer_const_constructors
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              msg,
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Cancelar
                ],
              ),
            ),
          );
        });
  }
}
