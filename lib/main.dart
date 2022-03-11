// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Pantalla de Datos',
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
    const HomePage({Key? key}) : super(key: key);
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text("Pantalla Incial"),
          elevation: 20.0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15))
          ),
          actions: <Widget> [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () => {},)
          ],
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('DATOS',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20)
              ),
            onPressed: (){
              final route = MaterialPageRoute(
                builder:(context) => SecondScreen());
              Navigator.push(context, route);
            },
          ) 
        ),
      );
    }
  }

  class SecondScreen extends StatelessWidget {
    const SecondScreen({Key? key}) : super(key: key);
  
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
                child: Text('Regresar'),
              )
            ],
            /*child: ElevatedButton(
            onPressed:(){
              Navigator.pop(context);
            },
            child: Text('Regresar'),
          )*/
          ),
        ),
      );
    }
  }