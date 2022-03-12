// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class PantallaDatos extends StatelessWidget {
    const PantallaDatos({Key? key}) : super(key: key);
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Datos'),
        ),
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/perfil.png"),
                radius: 100,
              ),
              SizedBox(height: 10.0),
              Text('DIANA ESTEPHANIE GONZALEZ PEREZ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              ),
              SizedBox(height: 10.0),
              Text('TI: DESARROLLO MULTIPLATAFORMA',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 15),
              ),
              SizedBox(height: 10.0),
              ElevatedButton(
                onPressed:() {
                  Navigator.pop(context);
                }, 
                child: Text('REGRESAR',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20)
                ),
              )
            ],
          ),
        ),
      );
    }
  }