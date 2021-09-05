/*
LISTA DE EXERCICIOS  - AULA 04 - WIDGETS (PARTE 01) - 21AGO2021
Disciplina  : PROGRAMAÇÃO PARA DISPOSITIVOS MÓVEIS
Professor   : JOSEFFE BARROSO DE OLIVEIRA
Autor(a)    : ANDERSON SOARES DOS SANTOS
MATRICULA   : 1290481923017
Data atual  : 22/08/2021  - AULA 04 - WIDGETS (PARTE 01) - EXERCICIO 2
EXERCICO 02 : - #App02 - Hello <<Seu Nome>> e faça uma estilização diferente
                conforme seu gosto
                 Aproveite para testar todos os widgets já aprendidos
                 + suas propriedades)

*/

//app hello world ANDERSON SOARES

//DECLARANDO BIBLIOTCA DO FLUTTER
import 'package:flutter/material.dart';
//import 'package:app_hello/telainicial.dart';

//DECLARANDO FUNCÇÃO MAIN
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.black
      ),
      home:telaInicial() ,
    );
  }

}

telaInicial(){
  return Scaffold(
    appBar: AppBar(
      title: Text("##App02 - Hello ,ANDERSON SOARES >> "),
    ),
    body: Container(
      color: Colors.white,
      child: Center(
        child: Text("Hello ,ANDERSON SOARES !",
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
              //decoration: TextDecoration.overline,
              decorationColor: Colors.black,
              decorationStyle: TextDecorationStyle.solid,
              // decorationStyle: TextDecorationStyle.dashed,
            )),
      ),
    ),


    drawer: Container(
        color: Colors.green
    ),
    floatingActionButton: FloatingActionButton(onPressed: () {},

    ),
  );
}
