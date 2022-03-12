// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class PruebaStack extends StatelessWidget {
  const PruebaStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Stack')
      ),
      body: Center(
        child: SizedBox(
          width: 300.0,
          height: 300.0,
          child: Center(
            child: Stack(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              fit: StackFit.expand,
              //overflow: Overflow.visible,
              children: <Widget> [
                Container(
                  width: 300.0,
                  height: 300.0,
                  color: Colors.red,
                ),
                Positioned(
                  top: 80.0,
                  left: 80.0,
                  child: Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.black,
                  ),
                ),
                Positioned(
                  top: 20.0,
                  left: 20.0,
                  child: Container(
                    width: 200.0,
                    height: 200.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://miro.medium.com/max/320/0*ObJbOfJnx4QIPUq9.png',
                         scale: 1.0)
                      )
                  ),
                  ),
                ),
                Positioned(
                  top: 250.0,
                  left: 180.0,
                  child: ElevatedButton(
                    onPressed:() {
                      Navigator.pop(context);
                    }, 
                    child: Text('REGRESAR',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20)
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}