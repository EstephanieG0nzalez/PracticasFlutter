// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class DatosStack extends StatelessWidget {
  const DatosStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Datos Stack'),
      ),
      body: Center(
        child: SizedBox(
          width: 350.0,
          height: 350.0,
          child: Center(
            child: Stack(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              fit: StackFit.expand,
              children: <Widget>[
                Container(
                  width: 300.0,
                  height: 300.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(360.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/perfil.png"),
                    ),
                  ),
                ),
                Positioned(
                  top: 220.0,
                  left: 85.0,
                  child: Container(
                    width: 280.0,
                    padding: const EdgeInsets.all(10.0),
                    //alignment: Alignment.bottomLeft,
                     child: const Text('DIANA ESTEPHANIE GONZALEZ PEREZ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 15.0,
                  left: 100.0,
                  child: Container(
                    padding:const EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('REGRESAR',
                        style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20)
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}