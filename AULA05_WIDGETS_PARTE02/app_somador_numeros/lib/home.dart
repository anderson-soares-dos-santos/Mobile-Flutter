import 'package:flutter/material.dart';


class widgetHome extends StatefulWidget {
  const widgetHome({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<widgetHome> {
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();
  TextEditingController n3Controller = TextEditingController();

  String infoResultado = "INFORME OS VALORES!";


  void _calcular(){
    setState(() {
      double n1 = double.parse(n1Controller.text);
      double n2 = double.parse(n2Controller.text);
      double n3 = double.parse(n3Controller.text);

      double resultado = n1+n2+n3;

      infoResultado = 'RESULTADO : $resultado';


    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),

      //para garantir o fundo de tela na cor desejada
      backgroundColor: Colors.white,
      body:_body(),

    );
  }

  _titulo() {
    return AppBar(
      title: Text("SOMADOR DE NÚMEROS "),
      centerTitle: true,
      backgroundColor: Colors.black,
    );
  }

  _body() {
    return
      SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget>[
            //FOTO APOS TITULO
           // _foto(),
            //para digitar
            _campo("DIGITE O 1º VALOR", n1Controller),
            _campo("DIGITE O 2º VALOR", n2Controller),
            _campo("DIGITE O 3º VALOR", n3Controller),
            //BOTAO
            _botao(),
            //TEXTO APOS PRESSIONAR BOTAO
            _texto(infoResultado),
          ],
        ),
      );
  }

  _campo(labelTitulo, objController) {
    return TextField(
      keyboardType: TextInputType.number,
      //estilizar
      decoration: InputDecoration(
        labelText: labelTitulo,
        labelStyle: TextStyle(
            color:Colors.black
        ),

      ),
      textAlign: TextAlign.center,
      style:TextStyle(
          color:Colors.black,
          fontSize: 25.0
      ),
      controller: objController,
    );
  }

  _botao() {
    return
            Padding(
                padding:EdgeInsets.only(top:20.0, bottom:20.0),
                child:Container(
                  height: 50.0,
                  child:RaisedButton(
                    onPressed: _calcular,
                    child:Text("CALCULAR",
                      style:TextStyle(
                          color:Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                      ),
                    ),
                    color:Colors.black,
                  ),
                )
            );
  }

  _texto(textoParaExibir) {
    return Text(
      textoParaExibir,
      textAlign: TextAlign.center,
      style: TextStyle(
        color:Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 25.0,
      ),
    );
  }

  _foto() {
    return Center(
      child: Image.network(
        'https://s2.glbimg.com/fLLjtcmosminFpbQVwWjJ6qEdNU=/512x320/smart/e.glbimg.com/og/ed/f/original/2015/09/10/ads_macgyver1.jpg',

        height: 150,
        width: 150,
      ),
    );
  }








}
