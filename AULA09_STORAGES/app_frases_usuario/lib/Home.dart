import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _switchDia = false;
  bool _switchPequeno = false;
  double tamanhoFonte = 40.0;
  var corFundo = Colors.black38;
  var corTexto = Colors.white;



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
    return

      AppBar(

        title: Text(
          "FRASES ",

          //exercicio solicita cor da fonte vermelha
          style:TextStyle(
            color:Colors.black,

          ),
        ),
        centerTitle: true,
        //exercicio solicita fundo de tela branco
        backgroundColor: Colors.white,

      );
  }


  _body() {
    return
      SingleChildScrollView(
        // padding: EdgeInsets.fromLTRB(100.0, 0.0, 10.0, 0.0),

        child:Column(
          //alinhamento a esquerda
          mainAxisAlignment: MainAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.center,
          //PARA "ESTICAR" HORIZONTALMENTE TODOS SO COMPONENTES
          mainAxisSize: MainAxisSize.max,
          children:<Widget>[
            Row(children: <Widget>[
              Text('Dia'),
              _botaoSwitchDia(),
              Text('Pequeno'),
              _botaoSwitchPequeno()
            ]),

            Row(
                children: <Widget>[
                  Flexible(child:
                  SingleChildScrollView(
                      child:
                      Text("'\" A vingança nunca é plena, mata a alma e envenena\.\""
                          " (Seu Madruga)\.\" ",
                        style: TextStyle(fontSize: tamanhoFonte,
                            backgroundColor: corFundo,
                            color: corTexto),)
                  )
                  )]
            )
          ],

        ),
      );
  }



  _botaoSwitchDia() {
    return Switch(
      value: _switchDia,
      activeTrackColor: Colors.lightGreenAccent,
      activeColor: Colors.black,
      onChanged: (value) {
        setState(() {
          _switchDia = value;
          if (value == false)
          {
            corFundo = Colors.black38;
            corTexto = Colors.white;
          }
          else
          {
            corFundo = Colors.white;
            corTexto = Colors.black;
          }
        });
      },
    );
  }



  _botaoSwitchPequeno() {
    return Switch(
      value: _switchPequeno,
    activeTrackColor: Colors.lightGreenAccent,
    activeColor: Colors.black,
      onChanged: (value) {
        setState(() {
          _switchPequeno = value;
          if (value == false)
          {
            tamanhoFonte = 40.0;
          }
          else
          {
            tamanhoFonte = 15.0;
          }
        });
      },
    );
  }
}