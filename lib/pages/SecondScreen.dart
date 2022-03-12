// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
    const SecondScreen({Key? key}) : super(key: key);
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text("Segunda Pantalla"),
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
            child: Text('REGRESAR',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20)
              ),
            onPressed:() {
                  Navigator.pop(context);
            }, 
          ) 
        ),
      );
    }
  }