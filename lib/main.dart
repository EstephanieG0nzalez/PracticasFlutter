// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:pantalla_datos/pages/PruebaStack.dart';

import 'pages/PantallaDatos.dart';
import 'pages/SecondScreen.dart';
import 'pages/PruebaStack.dart';
import 'pages/DatosStack.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter',
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/second': (context) => SecondScreen(),
      '/datos':(context) => PantallaDatos(),
      '/stack':(context) => PruebaStack(),
      '/datosStack':(context) => DatosStack(),
    },
    //home: HomePage(),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              ElevatedButton(
                child: Text('SEGUNDA PANTALLA',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20)
                  ),
                onPressed: (){
                  final route = MaterialPageRoute(
                    builder:(context) => SecondScreen());
                  Navigator.push(context, route);
                },
              ),
              ElevatedButton(
                child: Text('DATOS',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20)
                  ),
                onPressed: (){
                  final route = MaterialPageRoute(
                    builder:(context) => PantallaDatos());
                  Navigator.push(context, route);
                },
              ),
              ElevatedButton(
                child: Text('STACK',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20)
                  ),
                onPressed: (){
                  final route = MaterialPageRoute(
                    builder:(context) => PruebaStack());
                  Navigator.push(context, route);
                },
              ),
              ElevatedButton(
                child: Text('DATOS STACK',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20)
                  ),
                onPressed: (){
                  final route = MaterialPageRoute(
                    builder:(context) => DatosStack());
                  Navigator.push(context, route);
                },
              ),
            ],
          ) 
        ),
      );
    }
  }