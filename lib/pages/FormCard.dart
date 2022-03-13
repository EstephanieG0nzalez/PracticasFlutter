// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MyStateFulWidget extends StatefulWidget {
  const MyStateFulWidget({Key? key}) : super(key: key);

  @override
  State<MyStateFulWidget> createState() => _MyStateFulWidgetState();
}

class _MyStateFulWidgetState extends State<MyStateFulWidget> {
  late TextEditingController _controller;
  var maskCard = MaskTextInputFormatter(mask: '#### #### #### ####', filter: { "#": RegExp(r'[0-9]')});
  var maskFecha = MaskTextInputFormatter(mask: '##/##', filter: { "#": RegExp(r'[0-9]')});
  var maskCVV = MaskTextInputFormatter(mask: '###', filter: { "#": RegExp(r'[0-9]')});

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TextEditingController();
  }
  
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              inputImagen(),
              inputName(_controller),  
              SizedBox(height: 10,),
              inputCard(maskCard),  
              SizedBox(height: 10,),
              Row(
                children: <Widget>[
                  Flexible(child: inputFecha(maskFecha)),
                  SizedBox(width: 10,),
                  Flexible(child: inputCodigo(maskCVV)),
                ],
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed:() {
                  Navigator.pop(context);
                },
                child: Text('PAGAR',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal.shade600
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget inputImagen(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    margin: const EdgeInsets.symmetric(vertical: 30.0),
    child: Image.asset('assets/images/card.png', width: 350,),
  );
}

Widget inputName(_controller){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    margin: EdgeInsets.symmetric(horizontal: 30.0,),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      border: Border.all(color: Colors.teal.shade600, width: 3.0)
    ),
    child: TextFormField(
      autofocus: true,
      controller: _controller,
      decoration: const InputDecoration(
        border: InputBorder.none,
        //icon: Icon(Icons.contact_mail),
        prefixIcon: Icon(
          Icons.person,
          color: Colors.redAccent),
        //labelText: 'Nombre',
        hintText: 'Nombre completo'
      ),
    ),
  );
}

Widget inputCard(maskCard){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    margin: EdgeInsets.symmetric(horizontal: 30.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      border: Border.all(color: Colors.teal.shade600, width: 3.0)
    ),
    child: TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [maskCard],
      decoration: InputDecoration(
        border: InputBorder.none,
        prefixIcon: Icon(
          Icons.credit_card,
          color: Colors.redAccent),
        //labelText: 'Tarjeta',
        hintText: 'Número de la Tarjeta'
      ),
    ),
  );
}

Widget inputFecha(maskFecha){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    margin: EdgeInsets.symmetric(horizontal: 30.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      border: Border.all(color: Colors.teal.shade600, width: 3.0)
    ),
    child: TextFormField(
      keyboardType: TextInputType.datetime,
      inputFormatters: [maskFecha],
      decoration: InputDecoration(
        border: InputBorder.none,
        prefixIcon: Icon(
          Icons.date_range_rounded,
          color: Colors.redAccent),
        //labelText: 'Expira',
        hintText: 'Expira'
      ),
    ),
  );
}

Widget inputCodigo(maskCVV){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    margin: EdgeInsets.symmetric(horizontal: 30.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      border: Border.all(color: Colors.teal.shade600, width: 3.0)
    ),
    child: TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [maskCVV],
      decoration: InputDecoration(
        border: InputBorder.none,
        prefixIcon: Icon(
          Icons.domain_verification_rounded ,
          color: Colors.redAccent),
        //labelText: 'CVV',
        hintText: 'CVV'
      ),
    ),
  );
}