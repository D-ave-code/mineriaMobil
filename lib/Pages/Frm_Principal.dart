import 'package:flutter/material.dart';
import 'package:ExamKids/Pages/Frm_Aplicacion.dart';
import 'package:ExamKids/Pages/Frm_Enfermedades.dart';
import 'package:ExamKids/Pages/Frm_RegistroSintomas.dart';

class Frm_Principal extends StatefulWidget {
  @override
  _Frm_PrincipalState createState() => _Frm_PrincipalState();
}

class _Frm_PrincipalState extends State<Frm_Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExamKids',
            style: TextStyle(
                wordSpacing: 6,
                fontSize: 20.0,
                fontFamily: 'Arial',
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255))),
        backgroundColor: Color.fromARGB(255, 249, 91, 64),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: <Widget>[
              _CardSin(),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 5,
                      padding: EdgeInsets.all(8.0),
                      minimumSize: Size(2000, 40)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MultiSwitchSG()));
                  },
                  child: Text('SIGNOS VITALES')),
              _CardSeg(),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 5,
                      padding: EdgeInsets.all(8.0),
                      minimumSize: Size(2000, 40)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Frm_Enfermedades()));
                  },
                  child: Text('ENFERMEDADES')),
              _CardEnm(),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 5,
                      padding: EdgeInsets.all(8.0),
                      minimumSize: Size(2000, 40)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Frm_Aplicacion()));
                  },
                  child: Text('USO DE LA APLICACION')),
            ],
          ),
        ),
      ),
    );
  }

  // ------------------------ Widgets ------------------
  Widget _CardSin() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        child: Column(
          children: <Widget>[
            Container( // altura del contenedor
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MultiSwitchSG()));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: FadeInImage(
                    placeholder: AssetImage('images/cargando.gif'),
                    image: AssetImage('images/sintomas.webp'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _CardSeg() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        child: Column(
          children: <Widget>[
            Container( // altura del contenedor
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Frm_Enfermedades()));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: FadeInImage(
                    placeholder: AssetImage('images/cargando.gif'),
                    image: AssetImage('images/enfermedades.jpg'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _CardEnm() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        child: Column(
          children: <Widget>[
            Container( // altura del contenedor
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Frm_Aplicacion()));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: FadeInImage(
                    placeholder: AssetImage('images/cargando.gif'),
                    image: AssetImage('images/aplicacion.jpg'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
