import 'package:flutter/material.dart';
import 'dart:math';

class widgetHome extends StatefulWidget {
  const widgetHome({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<widgetHome> {
  //TextEditingController n1Controller = TextEditingController();
  //TextEditingController n2Controller = TextEditingController();
  int numeroSorteado = 0 ;
  //numero sorteado de 0 a 10 "randomicamente"

  String infoResultado = "___________";


  void _sortear(){
    setState(() {
      //double n1Etanol = double.parse(n1Controller.text);
      //double n2Gasolina = double.parse(n2Controller.text);
      numeroSorteado=new Random().nextInt(10);

        infoResultado = '__________ $numeroSorteado ''__________';


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
    return

      AppBar(

        title: Text(
          "JOGO DO Nº ALEATÓRIO ",

          //exercicio solicita cor da fonte laranja
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
          mainAxisAlignment: MainAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,

          children:<Widget>[
            //FOTO APOS TITULO
            _foto(),
           //TEXTO LABEL
            _texto("PENSE EM UM NÚMERO DE 1 A 10"),
            //TEXTO APOS PRESSIONAR BOTAO
            _texto(infoResultado),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,

              children:<Widget>[

                //BOTAO
                _botaoCalcular(),

              ],
            ),

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

  _botaoCalcular() {
    return
      Padding(
          padding:EdgeInsets.only(top:20.0, bottom:20.0),

          child:Container(
            height: 60.0,
            //adicinando borda
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black,
                  //espessura da borda
                  width:5.0,)
            ),


            child:RaisedButton(


              onPressed: _sortear,
              child:Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      " VERIFICAR ",

                      style:TextStyle(


                        color:Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ),
                ],
              ),
              //exercicio solcita o botão azul
              color:Colors.lightBlueAccent,
            ),

          )
      );
  }



  _texto(textoParaExibir) {
    //inserindo um container.
    //para aplicar as propriedades
    return Container(

      height: 60.0,
      margin: const EdgeInsets.all(30.0),
      //margin:const EdgeInsetsDirectional.only(10.0),
      //padding: const EdgeInsets.all(10.0),
      //decoration: _bordatexto(),

      child:Text(

        textoParaExibir,
        textAlign: TextAlign.center,
        style: TextStyle(
          //exercicio solicita texto em  fonte vermelha
          color:Colors.redAccent,
          fontWeight: FontWeight.bold,

          fontSize: 25.0,
          //sublinhar texto
          decoration: TextDecoration.underline,

        ),

      ),
    );

  }

  _foto() {
    return Center(
      child: Image.asset(
        "assets/images/01pensando.jpg",

        height: 150,
        width: 150,
      ),
    );
  }

  _bordatexto() {
    return

      BoxDecoration(
        border: Border.all(
          // cor da borda
          color: Colors.black,
          //espessura da borda
          width:5.0,


        ),
      );
  }










}
