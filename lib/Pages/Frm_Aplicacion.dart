import 'package:flutter/material.dart';

class Frm_Aplicacion extends StatefulWidget {

  @override
  State<Frm_Aplicacion> createState() => _Frm_AplicacionState();
}

// -------------------------------------------------------------------
class _Frm_AplicacionState extends State<Frm_Aplicacion>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   
    // ---------------- Info ------------------
    Widget titleApp = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: const Text(
                    'ExamKids',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Color.fromARGB(255, 138, 138, 128),
                    ),
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.smartphone,
            color: Color.fromARGB(255, 39, 188, 178),
          ),
        ],
      ),
    );

    Widget textApp = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32, bottom: 20),
      // ignore: prefer_const_constructors
      child: Text(
          "La aplicacion ExamKids permite la recoleccion de sintomas e imagen de la lesion de un paciente"
          "las cuales serán enviados a un servidor local que permita clasificar el tipo de lesion y predecir "
          "la posible enfermedad exantemática del paciente, la información será presentada en forma de diagnostico previo en la computadora del "
          "doctor poder agilizar el tiempo de diagnostico oficial del paciente: \n\n El formulario esta conformado con la siguiente estructura:",
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Arial',
              fontWeight: FontWeight.normal,)),
    );

    // ---------------- Datos del paciente ------------------
    Widget titleDP = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: const Text(
                    'Datos del paciente',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Color.fromARGB(255, 138, 138, 128),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget textDP = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32, bottom: 20),
      // ignore: prefer_const_constructors
      child: Text(
          "Es la información relevante sobre el paciente, como su nombre, edad, género y cualquier otra información que sea importante para evaluar y tratar su estado de salud.",
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Arial',
              fontWeight: FontWeight.normal,)),
    );

    // ---------------- Sintomas Generales ------------------
    Widget titleSG = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: const Text(
                    'Sintomas generales',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Color.fromARGB(255, 138, 138, 128),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget textSG = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32, bottom: 20),
      // ignore: prefer_const_constructors
      child: Text(
          "Hace referencia a síntomas que pueden afectar a todo el cuerpo, como fiebre, fatiga, pérdida de apetito, dolor muscular y de cabeza, sudoración nocturna, malestar general y debilidad.",
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Arial',
              fontWeight: FontWeight.normal,)),
    );

    // ---------------- Sintomas Respiratorios ------------------
    Widget titleSR = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: const Text(
                    'Sintomas respiratorios',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Color.fromARGB(255, 138, 138, 128),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget textSR = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32, bottom: 20),
      // ignore: prefer_const_constructors
      child: Text(
          "Hace referencia a síntomas que afectan el sistema respiratorio, como tos, dolor de garganta, congestión nasal, secreción nasal, dificultad para respirar, sibilancias y falta de aire.",
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Arial',
              fontWeight: FontWeight.normal,)),
    );

    // ---------------- Sintomas Gastrointestinales ------------------
    Widget titleSGI = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: const Text(
                    'Sintomas gastrointestinales',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Color.fromARGB(255, 138, 138, 128),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget textSGI = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32, bottom: 20),
      // ignore: prefer_const_constructors
      child: Text(
          "Hace referencia a síntomas que afectan el sistema digestivo, como náuseas, vómitos, diarrea, dolor abdominal, distensión abdominal, flatulencia y acidez estomacal.",
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Arial',
              fontWeight: FontWeight.normal,)),
    );

    // ---------------- Sintomas Gastrointestinales ------------------
    Widget titleSL = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: const Text(
                    'Sintomas locales',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Color.fromARGB(255, 138, 138, 128),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget textSL = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32, bottom: 20),
      // ignore: prefer_const_constructors
      child: Text(
          "Hace referencia a síntomas que se limitan a una parte específica del cuerpo, como dolor en una articulación, enrojecimiento, inflamación, picazón, ardor y sensibilidad.",
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Arial',
              fontWeight: FontWeight.normal,)),
    );

        // ---------------- Sintomas Adicionales ------------------
    Widget titleSA = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: const Text(
                    'Sintomas adicionales',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Color.fromARGB(255, 138, 138, 128),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget textSA = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32, bottom: 20),
      // ignore: prefer_const_constructors
      child: Text(
          "Hace referencia a síntomas que no se ajustan a ninguna de las categorías anteriores o que no son específicos de una enfermedad en particular, como mareo, dolor de oído, cambios en el apetito, cambios en el peso, cambios en el estado de ánimo, pérdida de memoria y cambios en el patrón de sueño. Estos síntomas pueden ser importantes para hacer un diagnóstico preciso y tratar adecuadamente al paciente.",
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Arial',
              fontWeight: FontWeight.normal,)),
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('APLICACION',
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
            Image.asset(
              'images/aplicacion.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleApp,
            textApp,
            titleDP,
            textDP,
            titleSG,
            textSG,
            titleSR,
            textSR,
            titleSGI,
            textSGI,
            titleSL,
            textSL,
            titleSA,
            textSA
          ],
        ),
      ),
    );
  }
}
