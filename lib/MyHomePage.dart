import 'package:flutter/material.dart';
import 'dart:developer';
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController valor1 = TextEditingController();
  TextEditingController valor2 = TextEditingController();
  int resultado = 0;

  void sumar(){

    setState(() {
       resultado = int.parse(valor1.text)+int.parse(valor2.text);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.white,
        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        child: Container(

          padding: const EdgeInsets.symmetric(
            // vertical: 8.0,
            horizontal: 32.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: valor1,
                keyboardType: TextInputType.number,

              ),
              TextField(
                controller: valor2,
                keyboardType: TextInputType.number,

              ),

              FlatButton(
                color: Colors.black12,
                hoverColor: Colors.white54,
                child: Text("Calcular"),
                onPressed:() {
                  if(valor1.text.length!=0 && valor2.text.length!=0){
                    log("el valor 1 es : " + valor1.text.toString());
                    log("el valor 2 es : " + valor2.text.toString());
                    sumar();
                    log("el resultado es = "+resultado.toString());
                  }else{
                    resultado = 0;
                  }

                },
              ),
              Text(
                "El Resultado es = " + resultado.toString()
              )
            ],
          ),
        ),
      )


    );
  }
}