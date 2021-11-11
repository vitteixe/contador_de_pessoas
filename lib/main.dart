import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//-- Iniciando App --//
void main() {
  runApp(MyApp());
}
//-! Iniciando App --//

//-- Abrinddo Classe STFULL --//

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

//-- Função Decrementar --//
void decrement() {
  print("decrementar");
}
//-! Função Decrementar --//

//-- Função incrementar --//
void increment() {
  print("incrementar");
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.red, //Cor do fundo da Tela
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/fundo.png"), //acessando image
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //Centralizando widgets
              children: [
                const Text(
                  "Pode Entrar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(28),
                  child: Text(
                    "0",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 100,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        // estilo do botão
                        backgroundColor: Colors.white,
                        //cor do fundo botão
                        fixedSize: const Size(80, 80),
                        // espaçamento fundo buttn
                        primary: Colors.black54,
                        //cor ao pressionar
                        shape: RoundedRectangleBorder(
                          // arredondando botão
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      onPressed: decrement,
                      child: const Text(
                        "Saiu",
                        style: TextStyle(
                          //estilo do texto
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(width: 32), //widget invisivel (espaçamento)
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: const Size(80, 80),
                        primary: Colors.black54,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      onPressed: increment,
                      child: const Text(
                        "Entrou",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
//-! Abrinddo Classe STFULL --//
