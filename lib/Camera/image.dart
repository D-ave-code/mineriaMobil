import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Imagen extends StatefulWidget {
  @override
  _ImagenState createState() => _ImagenState();
}

class _ImagenState extends State<Imagen> {
  File? imagen = null;
  final picker = ImagePicker();

  // Llamada de imagen
  Future selImage(op) async {
    var pickerFile;
    if (op == 1) {
      pickerFile = await picker.getImage(source: ImageSource.camera);
    } else {
      pickerFile = await picker.getImage(source: ImageSource.gallery);
    }
    setState(() {
      if (pickerFile != null) {
        imagen = File(pickerFile.path);
      } else {
        print('No Seleccionaste ninguna imagen');
      }
    });
  }

  String imageToBase64(File image) {
    List<int> imageBytes = image.readAsBytesSync();
    String base64Image = base64Encode(imageBytes);
    return base64Image;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seleccionar Imagen'),
      ),
      body: ListView(
        children: [
          Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        opciones(context);
                        
                      },
                      child: Text('Seleccionar una imagen')),
                  SizedBox(
                    height: 30,
                  ),
                  imagen == null ? Center() : Image.file(imagen!)
                ],
              )),
        ],
      ),
    );
  }
}

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
                      _ImagenState().opciones(_ImagenState().context);
                    },
                    child: Text('Seleccionar una imagen')),
                SizedBox(
                  height: 30,
                ),
                _ImagenState().imagen == null
                    ? Center()
                    : Image.file(_ImagenState().imagen!)
              ],
            )),
      ],
    ),
  );
}
