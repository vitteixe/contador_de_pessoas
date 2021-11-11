import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


//-- Iniciando App --//
void main () {
  runApp(MyApp());
}
//-! Iniciando App --//


//-- Abrinddo Classe STFULL --//

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red, //Cor do fundo da Tela
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center, //Centralizando widgets
          children: [
            const Text (
              "Pode Entrar",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Text(
              "0",
              style: TextStyle(
                color: Colors.white,
                fontSize: 100,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      )
    );
  }
}
//-! Abrinddo Classe STFULL --//