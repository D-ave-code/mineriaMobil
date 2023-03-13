import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Frm_espera extends StatefulWidget {
  @override
  _Frm_esperaState createState() => _Frm_esperaState();
}

class _Frm_esperaState extends State<Frm_espera> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue, // establece el color de fondo en azul
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/esperando.webp'),
            Padding(
              padding: EdgeInsets.only(top: 22.0, left: 16.0, right: 16.0),
              child: Row(
                children: [
                  Text('ENVIANDO DATOS:',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 138, 138, 128))),
                ],
              ),
            ),
            CircularProgressIndicator(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Frm_espera(),
  ));
}
