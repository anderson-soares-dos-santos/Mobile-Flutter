import 'package:flutter/material.dart';
/*
class widgetHome extends StatelessWidget {
  const widgetHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Hello"),
        centerTitle: true,
      ),
      body: _body(),
      //floatingActionButton: FloatingActionButton(onPressed: (){}),


    );
  }
  _body(){
    return  Container(
      //extedendo o cntainer por toda a tela na horizontal
      height:double.infinity ,
      //extedendo o cntainer por toda a tela na vertical
      width:double.infinity ,
      color: Colors.black,
      /*
      child: Center(
        //child:_text()
        child:_button()
      ),
    */
      //exibri varios elemntos ao lado do outro
      //usando o ROW
      /*
     child:Row(
        children: <Widget>[
          _button(),
          _button(),
          _button(),
        ],
     ),
    */
      //exibri varios elemntos ao lado do outro na vertical
      //usando o COLUMN
      child:Column(
        //aproveitamento minimo/maximo dos compontens na tela
        // mainAxisSize: MainAxisSize.min,
        mainAxisSize: MainAxisSize.max,
        //alinamento no centro , final , ou inicio
        mainAxisAlignment: MainAxisAlignment.center,
        //alinahmento detodo bloco container
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _button(),
          _button(),
          _button(),
        ],
      ),
    );

  }
  _text(){
    return Text("Hello Turma!",
      style: TextStyle(
        fontSize: 30,
        color: Colors.blue,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        decoration: TextDecoration.underline,
        //decoration: TextDecoration.overline,
        decorationColor: Colors.red,
        decorationStyle: TextDecorationStyle.dashed,
      ),
    );
  }

  _button() {
    return RaisedButton(
      color:Colors.green,
      onPressed: _onClick,
      //onPressed: null,
      //onPressed: () {
      // print("CLICOU NO BOTÃO!");
      //},

      child:Text(
        "ok!",
        style:TextStyle(
          color:Colors.white,
          fontSize: 20,
        ),
      ),
    );


  }
  _onClick(){
    print("CLICOU NO BOTÃO!");

  }
}
*/

class widgetHome extends StatefulWidget {
  const widgetHome({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<widgetHome> {
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
