import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ExamKids/Actividades/datosGenerales.dart';
import 'package:ExamKids/Actividades/partesCuerpo.dart';
import 'package:ExamKids/Actividades/sintomas.dart';
import 'package:ExamKids/Actividades/sintomasAdicionales.dart';
import 'package:ExamKids/Actividades/sintomasGastrointestinales.dart';
import 'package:ExamKids/Actividades/sintomasGenerales.dart';
import 'package:ExamKids/Actividades/sintomasLocales.dart';
import 'package:ExamKids/Actividades/sintomasRespiratorios.dart';
import 'package:ExamKids/Pages/Frm_Principal.dart';
import 'package:ExamKids/Pages/Frm_espera.dart';
import 'dart:convert';

import 'package:ExamKids/Services/service.dart';

import 'package:image_picker/image_picker.dart';

class MultiSwitchSG extends StatefulWidget {
  @override
  _MultiSwitchSGState createState() => _MultiSwitchSGState();
}

class _MultiSwitchSGState extends State<MultiSwitchSG> {
  // Controladores
  final TextEditingController controladorTemperatura = TextEditingController();
  final TextEditingController controladorNombre = TextEditingController();
  final TextEditingController controladorApellido = TextEditingController();
  final TextEditingController controladorCedula = TextEditingController();
  final TextEditingController controladorEdad = TextEditingController();

  Sintomas? _actividad;
  // Temperatura
  double temperatura = 0;
  bool val1 = false;
  onChangeFunction1(bool newValue) {
    setState(() {
      val1 = newValue;
      if (newValue == true) {
        temperatura = 1;
      } else {
        temperatura = 0;
      }
      print(temperatura);
    });
  }

  // Malestar General
  int malestarGeneral = 0;
  bool val2 = false;
  onChangeFunction2(bool newValue) {
    setState(() {
      val2 = newValue;
      if (newValue == true) {
        malestarGeneral = 1;
      } else {
        malestarGeneral = 0;
      }
      print(malestarGeneral);
    });
  }

  // Escalofrio
  int escalofrio = 0;
  bool val3 = false;
  onChangeFunction3(bool newValue) {
    setState(() {
      val3 = newValue;
      if (newValue == true) {
        escalofrio = 1;
      } else {
        escalofrio = 0;
      }
      print(escalofrio);
    });
  }

  // Perdida de apetito
  int perdidaApetito = 0;
  bool val4 = false;
  onChangeFunction4(bool newValue) {
    setState(() {
      val4 = newValue;
      if (newValue == true) {
        perdidaApetito = 1;
      } else {
        perdidaApetito = 0;
      }
      print(perdidaApetito);
    });
  }

  // Dolor de cabeza
  int cabeza = 0;
  bool val5 = false;
  onChangeFunction5(bool newValue) {
    setState(() {
      val5 = newValue;
      if (newValue == true) {
        cabeza = 1;
      } else {
        cabeza = 0;
      }
      print(cabeza);
    });
  }

  // Ganglios hinchados
  int gangliosHinchados = 0;
  bool val6 = false;
  onChangeFunction6(bool newValue) {
    setState(() {
      val6 = newValue;
      if (newValue == true) {
        gangliosHinchados = 1;
      } else {
        gangliosHinchados = 0;
      }
      print(gangliosHinchados);
    });
  }

  // ------------------ Sintomas Respiratorios --------------------
  // tos
  int tos = 0;
  bool val7 = false;
  onChangeFunction7(bool newValue) {
    setState(() {
      val7 = newValue;
      if (newValue == true) {
        tos = 1;
      } else {
        tos = 0;
      }
      print(tos);
    });
  }

  // moqueo
  int moqueo = 0;
  bool val8 = false;
  onChangeFunction8(bool newValue) {
    setState(() {
      val8 = newValue;
      if (newValue == true) {
        moqueo = 1;
      } else {
        moqueo = 0;
      }
      print(moqueo);
    });
  }

  // Dolor de Garganta
  int dolorGarganta = 0;
  bool val9 = false;
  onChangeFunction9(bool newValue) {
    setState(() {
      val9 = newValue;
      if (newValue == true) {
        dolorGarganta = 1;
      } else {
        dolorGarganta = 0;
      }
      print(dolorGarganta);
    });
  }

  // --------- Sintomas Gastrointestinales -------
  // Diarrea
  int diarrea = 0;
  bool val10 = false;
  onChangeFunction10(bool newValue) {
    setState(() {
      val10 = newValue;
      if (newValue == true) {
        diarrea = 1;
      } else {
        diarrea = 0;
      }
      print(diarrea);
    });
  }

  // Vomito
  int vomito = 0;
  bool val11 = false;
  onChangeFunction11(bool newValue) {
    setState(() {
      val11 = newValue;
      if (newValue == true) {
        vomito = 1;
      } else {
        vomito = 0;
      }
      print(vomito);
    });
  }

  // nauseas
  int nauseas = 0;
  bool val12 = false;
  onChangeFunction12(bool newValue) {
    setState(() {
      val12 = newValue;
      if (newValue == true) {
        nauseas = 1;
      } else {
        nauseas = 0;
      }
      print(nauseas);
    });
  }

  // Dolor abdominal
  int dolorAbdominal = 0;
  bool val13 = false;
  onChangeFunction13(bool newValue) {
    setState(() {
      val13 = newValue;
      if (newValue == true) {
        dolorAbdominal = 1;
      } else {
        dolorAbdominal = 0;
      }
      print("Dolor Abdominal: " + dolorAbdominal.toString());
    });
  }

  // ----------- Locales ---------
  // Comezon
  int comezon = 0;
  bool val14 = false;
  onChangeFunction14(bool newValue) {
    setState(() {
      val14 = newValue;
      if (newValue == true) {
        comezon = 1;
      } else {
        comezon = 0;
      }
      print(comezon);
    });
  }

  // hinchazon
  int hinchazon = 0;
  bool val15 = false;
  onChangeFunction15(bool newValue) {
    setState(() {
      val15 = newValue;
      if (newValue == true) {
        hinchazon = 1;
      } else {
        hinchazon = 0;
      }
      print(hinchazon);
    });
  }

  // Hinchazon Boca
  int hinchazonBoca = 0;
  bool val16 = false;
  onChangeFunction16(bool newValue) {
    setState(() {
      val16 = newValue;
      if (newValue == true) {
        hinchazonBoca = 1;
      } else {
        hinchazonBoca = 0;
      }
      print(hinchazonBoca);
    });
  }

  // Conjuntivitis
  int conjuntivitis = 0;
  bool val17 = false;
  onChangeFunction17(bool newValue) {
    setState(() {
      val17 = newValue;
      if (newValue == true) {
        conjuntivitis = 1;
      } else {
        conjuntivitis = 0;
      }
      print(conjuntivitis);
    });
  }

  // ------------- Sintomas Adicionales --------
  // Dolor al tragar
  int dolorTragar = 0;
  bool val18 = false;
  onChangeFunction18(bool newValue) {
    setState(() {
      val18 = newValue;
      if (newValue == true) {
        dolorTragar = 1;
      } else {
        dolorTragar = 0;
      }
      print(dolorTragar);
    });
  }

  // Dolor dentadura
  int dolorDentadura = 0;
  bool val19 = false;
  onChangeFunction19(bool newValue) {
    setState(() {
      val19 = newValue;
      if (newValue == true) {
        dolorDentadura = 1;
      } else {
        dolorDentadura = 0;
      }
      print(dolorDentadura);
    });
  }

  // Perdida del gusto
  int perdidaGusto = 0;
  bool val20 = false;
  onChangeFunction20(bool newValue) {
    setState(() {
      val20 = newValue;
      if (newValue == true) {
        perdidaGusto = 1;
      } else {
        perdidaGusto = 0;
      }
      print(perdidaGusto);
    });
  }

  // -------- Partes del Cuerpo --------
  // Mano
  int mano = 0;
  bool valPC1 = false;
  onChangeFunctionPC1(bool newValue) {
    setState(() {
      valPC1 = newValue;
      if (newValue == true) {
        mano = 1;
      } else {
        mano = 0;
      }
      print(mano);
    });
  }

  // Pie
  int pie = 0;
  bool valPC2 = false;
  onChangeFunctionPC2(bool newValue) {
    setState(() {
      valPC2 = newValue;
      if (newValue == true) {
        pie = 1;
      } else {
        pie = 0;
      }
      print(pie);
    });
  }

  // Boca
  int boca = 0;
  bool valPC3 = false;
  onChangeFunctionPC3(bool newValue) {
    setState(() {
      valPC3 = newValue;
      if (newValue == true) {
        boca = 1;
      } else {
        boca = 0;
      }
      print(boca);
    });
  }

  // Cara
  int cara = 0;
  bool valPC4 = false;
  onChangeFunctionPC4(bool newValue) {
    setState(() {
      valPC4 = newValue;
      if (newValue == true) {
        cara = 1;
      } else {
        cara = 0;
      }
      print(cara);
    });
  }

  // Cabeza
  int cabezaPC = 0;
  bool valPC5 = false;
  onChangeFunctionPC5(bool newValue) {
    setState(() {
      valPC5 = newValue;
      if (newValue == true) {
        cabezaPC = 1;
      } else {
        cabezaPC = 0;
      }
      print(cabezaPC);
    });
  }

  // Torse
  int torso = 0;
  bool valPC6 = false;
  onChangeFunctionPC6(bool newValue) {
    setState(() {
      valPC6 = newValue;
      if (newValue == true) {
        torso = 1;
      } else {
        torso = 0;
      }
      print(torso);
    });
  }

  // Extremidades Superiores
  int extremidadesSuperiores = 0;
  bool valPC7 = false;
  onChangeFunctionPC7(bool newValue) {
    setState(() {
      valPC7 = newValue;
      if (newValue == true) {
        extremidadesSuperiores = 1;
      } else {
        extremidadesSuperiores = 0;
      }
      print(extremidadesSuperiores);
    });
  }

  // Extremidades Inferiores
  int extremidadesInferiores = 0;
  bool valPC8 = false;
  onChangeFunctionPC8(bool newValue) {
    setState(() {
      valPC8 = newValue;
      if (newValue == true) {
        extremidadesInferiores = 1;
      } else {
        extremidadesInferiores = 0;
      }
      print(extremidadesInferiores);
    });
  }

  // Genitales
  int genitales = 0;
  bool valPC9 = false;
  onChangeFunctionPC9(bool newValue) {
    setState(() {
      valPC9 = newValue;
      if (newValue == true) {
        genitales = 1;
      } else {
        genitales = 0;
      }
      print(genitales);
    });
  }

  // ------------------------ Imagen Picker ------------------
  File? imagen = null;
  final picker = ImagePicker();

  String? base64Image;
  // Llamada de imagen
  Future selImage(op) async {
    var pickerFile;
    if (op == 1) {
      pickerFile = await picker.getImage(source: ImageSource.camera);
      if (pickerFile != null) {
        imagen = File(pickerFile.path);
        base64Image = await imageToBase64(imagen!);
      } else {
        print('No Seleccionaste ninguna imagen');
      }
    } else {
      pickerFile = await picker.getImage(source: ImageSource.gallery);
      if (pickerFile != null) {
        imagen = File(pickerFile.path);
        base64Image = await imageToBase64(imagen!);
      } else {
        print('No Seleccionaste ninguna imagen');
      }
    }
    setState(() {
      if (pickerFile != null) {
        imagen = File(pickerFile.path);
      } else {
        print('No Seleccionaste ninguna imagen');
      }
    });
  }

  // opciones
  opciones(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            contentPadding: EdgeInsets.all(0),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      selImage(1);
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.grey))),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Abrir camara',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Icon(Icons.camera_alt, color: Colors.blue)
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      selImage(2);
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Abrir galeria',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Icon(Icons.image_search, color: Colors.blue)
                        ],
                      ),
                    ),
                  ),
                  // Cancelar
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(color: Colors.red),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Cancelar',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  mensajePrueba(context, sg, sr, sgi, sl, sa, pc, base64Image, dg) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            contentPadding: EdgeInsets.all(0),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  InkWell(
                    onTap: () async {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                      this._actividad = await UserModel().ingresarLibros(context, sg, sr, sgi, sl, sa, pc, base64Image!, dg);
                      },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      // ignore: prefer_const_constructors
                      child: Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Enviar Datos',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Icon(Icons.check,
                              color: Color.fromARGB(255, 39, 188, 178))
                        ],
                      ),
                    ),
                  ),
                  // Cancelar
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(color: Colors.red),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Cancelar',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  /*   mensajito(context) {
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
                        children: const [
                          Expanded(
                            child: Text(
                              'Datos enviados con exito',
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
  } */

  //----- BASE 64 --------------
  Future<String> imageToBase64(File imageFile) async {
    List<int> imageBytes = await imageFile.readAsBytes();
    String base64Image = base64Encode(imageBytes);
    return base64Image;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('REGISTRO DE SINTOMAS',
              style: TextStyle(
                  wordSpacing: 6,
                  fontSize: 20.0,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255))),
          backgroundColor: Color.fromARGB(255, 249, 91, 64),
        ),
        body: ListView(
          children: [
            // -------------------- Datos Generales ------------
            const Padding(
              padding: EdgeInsets.only(top: 22.0, left: 16.0, right: 16.0),
              child: Row(
                children: [
                  Text('DATOS GENERALES:',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 138, 138, 128))),
                ],
              ),
            ),
            Container(
              // ------- Nombre
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey)),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                // -----
                controller: controladorNombre,
                keyboardType: TextInputType.name,
                style: const TextStyle(fontSize: 20),
                decoration: const InputDecoration(
                    hintText: "Nombres del paciente", border: InputBorder.none),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 22.0, left: 16.0, right: 16.0),
            ),
            Container(
              // ------- Apellido
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey)),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                // -----
                controller: controladorApellido,
                keyboardType: TextInputType.name,
                style: const TextStyle(fontSize: 20),
                decoration: const InputDecoration(
                    hintText: "Apellidos del paciente", border: InputBorder.none),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 22.0, left: 16.0, right: 16.0),
            ),
            Container(
              // ------- Cedula
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey)),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                // -----
                controller: controladorCedula,
                keyboardType: TextInputType.text,
                style: const TextStyle(fontSize: 20),
                decoration: const InputDecoration(
                    hintText: "Cedula del paciente", border: InputBorder.none),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 22.0, left: 16.0, right: 16.0),
            ),
            Container(
              // ------- Edad
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey)),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                // -----
                controller: controladorEdad,
                keyboardType: TextInputType.number,
                style: const TextStyle(fontSize: 20),
                decoration: const InputDecoration(
                    hintText: "Edad del paciente", border: InputBorder.none),
              ),
            ),
            // ------------------- Boton Imagen -------------
            const Padding(
              padding: EdgeInsets.only(top: 22.0, left: 16.0, right: 16.0),
              child: Row(
                children: [
                  Text('SELECCIONAR IMAGEN:',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 138, 138, 128))),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  opciones(context);
                },
                child: Text('Seleccionar una imagen')),
            SizedBox(
              width: 30,
              height: 30,
            ),
            imagen == null ? Center() : Image.file(imagen!),

            const Padding(
              padding: EdgeInsets.only(top: 22.0, left: 16.0, right: 16.0),
              child: Row(
                children: [
                  Text('SINTOMAS GENERALES:',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 138, 138, 128))),
                ],
              ),
            ),

            /// Sintomas Generales
            Container(
              // ------- Temperatura
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey)),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                // -----
                controller: controladorTemperatura,
                keyboardType: TextInputType.number,
                style: const TextStyle(fontSize: 20),
                decoration: const InputDecoration(
                    hintText: "Temperatura del paciente",
                    border: InputBorder.none),
              ),
            ),
            customSwitch('Malestar general', val2, onChangeFunction2),
            customSwitch('Escalofrio', val3, onChangeFunction3),
            customSwitch('Perdida del apetito', val4, onChangeFunction4),
            customSwitch('Dolor de cabeza', val5, onChangeFunction5),
            customSwitch(
                'Ganglios linfáticos hinchados', val6, onChangeFunction6),
            // Sitomas Respiratorios
            const Padding(
              padding: EdgeInsets.only(top: 22.0, left: 16.0, right: 16.0),
              child: Row(
                children: [
                  Text('SINTOMAS RESPIRATORIOS:',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 138, 138, 128))),
                ],
              ),
            ),
            customSwitch('Tos', val7, onChangeFunction7),
            customSwitch('Moqueo', val8, onChangeFunction8),
            customSwitch('Dolor de garganta', val9, onChangeFunction9),
            // Sintomas Gastrointestinales
            const Padding(
              padding: EdgeInsets.only(top: 22.0, left: 16.0, right: 16.0),
              child: Row(
                children: [
                  Text('SINTOMAS GASTROINTESTINALES:',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 138, 138, 128))),
                ],
              ),
            ),
            customSwitch('Diarrea', val10, onChangeFunction10),
            customSwitch('Vomito', val11, onChangeFunction11),
            customSwitch('Nauseas', val12, onChangeFunction12),
            customSwitch('Dolor abdominal', val13, onChangeFunction13),
            // Sintomas Locales
            const Padding(
              padding: EdgeInsets.only(top: 22.0, left: 16.0, right: 16.0),
              child: Row(
                children: [
                  Text('SINTOMAS LOCALES:',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 138, 138, 128))),
                ],
              ),
            ),
            customSwitch('Comezón', val14, onChangeFunction14),
            customSwitch('Hinchazón', val15, onChangeFunction15),
            customSwitch('Hinchazon de la boca', val16, onChangeFunction16),
            customSwitch('conjuntivitis', val17, onChangeFunction17),
            // Sintomas Adicionales
            const Padding(
              padding: EdgeInsets.only(top: 22.0, left: 16.0, right: 16.0),
              child: Row(
                children: [
                  Text('SINTOMAS ADICIONALES:',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 138, 138, 128))),
                ],
              ),
            ),
            customSwitch('Dolor al tragar', val18, onChangeFunction18),
            customSwitch('Dolor de la dentadura', val19, onChangeFunction19),
            customSwitch('Perdida del gusto', val20, onChangeFunction20),
            // Partes del Cuerpo
            const Padding(
              padding: EdgeInsets.only(top: 22.0, left: 16.0, right: 16.0),
              child: Row(
                children: [
                  Text('LOCALIZACION DE LA LESION:',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 138, 138, 128))),
                ],
              ),
            ),
            customSwitch('Mano', valPC1, onChangeFunctionPC1),
            customSwitch('Pie', valPC2, onChangeFunctionPC2),
            customSwitch('Boca', valPC3, onChangeFunctionPC3),
            customSwitch('Cara', valPC4, onChangeFunctionPC4),
            customSwitch('Cabeza', valPC5, onChangeFunctionPC5),
            customSwitch('Torso', valPC6, onChangeFunctionPC6),
            customSwitch(
                'Extremidades Superiores', valPC7, onChangeFunctionPC7),
            customSwitch(
                'Extremidades Inferiores', valPC8, onChangeFunctionPC8),
            customSwitch('Genitales', valPC9, onChangeFunctionPC9),
            ElevatedButton(
              child: Text('Ingresar'),
              onPressed: () async {
                String valTemperatura = controladorTemperatura.text;
                double doubleTem = double.parse(valTemperatura);
                SintomasGenerales sg = SintomasGenerales(
                    temperatura: doubleTem,
                    malestarGeneral: malestarGeneral,
                    escalofrio: escalofrio,
                    perdidaApetito: perdidaApetito,
                    dolorCabeza: cabeza,
                    gangliosHinchados: gangliosHinchados);
                SintomasRespiratorios sr = SintomasRespiratorios(
                    tos: tos, moqueo: moqueo, dolorGarganta: dolorGarganta);
                SintomasGastrointestinales sgi = SintomasGastrointestinales(
                    diarrea: diarrea,
                    vomito: vomito,
                    nauseas: nauseas,
                    dolorAbdominal: dolorAbdominal);
                SintomasLocales sl = SintomasLocales(
                    comezon: comezon,
                    hinchazon: hinchazon,
                    hinchazonBoca: hinchazonBoca,
                    conjuntivitis: conjuntivitis);
                SintomasAdicionales sa = SintomasAdicionales(
                    dolorTragar: dolorTragar,
                    perdidaGusto: perdidaGusto,
                    dolorDentadura: dolorDentadura);
                partesCuerpo pc = partesCuerpo(
                    cara: cara,
                    torso: torso,
                    cabeza: cabezaPC,
                    extremidadesSuperiores: extremidadesSuperiores,
                    extremidadesInferiores: extremidadesInferiores,
                    genitales: genitales,
                    manos: mano,
                    boca: boca,
                    pies: pie);
                String valNombre = controladorNombre.text;
                String valApellido = controladorApellido.text;
                String valCedula = controladorCedula.text;
                String valEdad = controladorEdad.text;
                int edad = int.parse(valEdad);
                datosGenerales dg = datosGenerales(
                    nombre: valNombre,
                    cedula: valCedula,
                    edad: edad,
                    sexo: 'Masculino',
                    apellido: valApellido);
                if (base64Image == null) {
                  opciones(context);
                } else {
                  mensajePrueba(context, sg, sr, sgi, sl, sa, pc, base64Image, dg);
                  
                }
                setState(() {});
                var _data = await UserModel().obtenerLibros();
                print(_data);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget customSwitch(String text, bool val, Function onChangeMethod) {
    return Padding(
      padding: const EdgeInsets.only(top: 22.0, left: 16.0, right: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,
              style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.normal,
                  color: Colors.black)),
          Spacer(),
          CupertinoSwitch(
              trackColor: Colors.grey,
              activeColor: Colors.red,
              value: val,
              onChanged: (newValue) async {
                onChangeMethod(newValue);
              }),
        ],
      ),
    );
  }
}

//------------------- Widget Imagen -------------
Widget ImagenPrueba() {
  return Container(
    child: ListView(
      children: [
        Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      _MultiSwitchSGState()
                          .opciones(_MultiSwitchSGState().context);
                    },
                    child: Text('Seleccionar una imagen')),
                SizedBox(
                  height: 30,
                ),
                _MultiSwitchSGState().imagen == null
                    ? Center()
                    : Image.file(_MultiSwitchSGState().imagen!)
              ],
            )),
      ],
    ),
  );
}