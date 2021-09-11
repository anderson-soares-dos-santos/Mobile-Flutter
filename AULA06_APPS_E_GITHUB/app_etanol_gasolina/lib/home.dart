import 'package:flutter/material.dart';



class widgetHome extends StatefulWidget {
  const widgetHome({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<widgetHome> {
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();
  double calcCombustivel = 0 ;

  String infoResultado = "Resultado";


  void _somar(){
    setState(() {
      double n1Etanol = double.parse(n1Controller.text);
      double n2Gasolina = double.parse(n2Controller.text);
      calcCombustivel = n1Etanol / n2Gasolina ;
      //informar ao usuário a melhor opção para abastecer
      if(calcCombustivel < 0.71)
      {
        infoResultado = ' ETANOL É MAIS VANTAJOSO ';
      }
      else
      {
        infoResultado = ' GASOLINA É MAIS VANTAJOSO ';
      }



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
          "ETANOL OU GASOLINA ",

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

            //para digitar
            _campo("DIGITE O PREÇO DO ETANOL", n1Controller),
            _campo("DIGITE O PREÇO DA GASOLINA", n2Controller),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,

              children:<Widget>[

                //BOTAO
                _botaoCalcular(),



              ],
            ),
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


              onPressed: _somar,
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
        "assets/images/alcoolgasolina.jpg",

        //height: 150,
        //width: 150,
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
