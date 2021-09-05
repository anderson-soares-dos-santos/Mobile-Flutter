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
      title: Text("#App01 - Hello Turma "),
    ),
    body: Container(
      color: Colors.white,
      child: Center(
        child: Text("Hello Turma!",
            style: TextStyle(
              fontSize: 50,
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
