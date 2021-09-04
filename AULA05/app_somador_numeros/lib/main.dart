import 'package:flutter/material.dart';
import 'home.dart';
/*
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: widgetHome(),
    );
  }
}

*/
void main() {

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      //home:Home(),
      home: widgetHome(),

    );

  }
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();

  String infoResultado = "Informe os números!";


  void _calcular(){
    setState(() {
      double n1 = double.parse(n1Controller.text);
      double n2 = double.parse(n1Controller.text);

      double resultado = n1+n2;

      infoResultado = 'RESULTADO : $resultado';
      //infoResultado = 'Resultado: $resultado';

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("SOMADOR DE NÚMEROS"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      //para garantir o fundo de tela na cor desejada
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget>[
            //para digitar
            TextField(
              keyboardType: TextInputType.number,
              //estilizar
              decoration: InputDecoration(
                labelText: "DIGITE O 1ºVALOR",
                labelStyle: TextStyle(
                  color:Colors.black
                ),

              ),
              textAlign: TextAlign.center,
              style:TextStyle(
                color:Colors.black,
                fontSize: 25.0
              ),
              controller: n1Controller,
            ),
            TextField(
              keyboardType: TextInputType.number,
              //estilizar
              decoration: InputDecoration(
                labelText: "DIGITE O 2ºVALOR",
                labelStyle: TextStyle(
                    color:Colors.black
                ),

              ),
              textAlign: TextAlign.center,
              style:TextStyle(
                  color:Colors.black,
                  fontSize: 25.0
              ),
              controller: n2Controller,
            ),
            Padding(
                padding:EdgeInsets.only(top:20.0, bottom:20.0),
                child:Container(
                  height: 50.0,
                    child:RaisedButton(
                      onPressed: _calcular,
                      child:Text("CALCULAR",
                      style:TextStyle(
                        color:Colors.black,
                        fontSize: 20.0
                      ),
                      ),
                      color:Colors.blue,
                    ),
                )
            ),
            Text(
              infoResultado,
              textAlign: TextAlign.center,
              style: TextStyle(
                color:Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            )
          ],
        ),


      ),
    );
  }
}
