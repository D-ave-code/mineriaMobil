import 'package:flutter/material.dart';
import 'package:mineria/Actividades/actividadesApp.dart';
import 'package:mineria/Actividades/sintomas.dart';

import 'package:mineria/Services/service.dart';

class homePage extends StatefulWidget {
  const homePage({
    super.key,
  });

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  Sintomas? _actividad;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Center(
            child: Row(
              children: [
                ElevatedButton(
                  child: Text('Serializable'),

                  onPressed:() async{
                    var _data = await UserModel().obtenerLibros();
                    print(_data);
                    setState(() {});
                  },
                ),
                if (this._actividad != null) Text(this._actividad!.cedula!),
                // Segundo Boton
                ElevatedButton(
                  child: Text('Ingresar'),

                  onPressed:() async{
                    //this._actividad = await UserModel().ingresarLibros();
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        )),
    );
  }
}