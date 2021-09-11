import 'package:flutter/material.dart';



class widgetHome extends StatefulWidget {
  const widgetHome({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<widgetHome> {
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();
  int totalpessoas = 0 ;

  String infoResultado = "0";


  void _somar(){
    setState(() {
      //double n1 = double.parse(n1Controller.text);
      //double n2 = double.parse(n2Controller.text);
      totalpessoas++;
      infoResultado = ' $totalpessoas';
    });
  }

  void _diminuir(){
    setState(() {
      //double n1 = double.parse(n1Controller.text);
      //double n2 = double.parse(n2Controller.text);
      totalpessoas--;
      infoResultado = ' $totalpessoas';
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
        "CONTADOR DE PESSOAS ",

        //exercicio solicita cor da fonte laranja
        style:TextStyle(
          color:Colors.orange,

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
            // _foto(),
            //TEXTO APOS PRESSIONAR BOTAO

            _texto(infoResultado),
            //para digitar
           // _campo("DIGITE O 1º VALOR", n1Controller),
           // _campo("DIGITE O 2º VALOR", n2Controller),


             Row(
               mainAxisAlignment: MainAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,

              children:<Widget>[

                //BOTAO
                _botaoSomar(),
                //BOTAO
                _botaoDiminuir(),
                //BOTAO

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

  _botaoSomar() {
    return
      Padding(
          padding:EdgeInsets.only(top:20.0, bottom:20.0),

          child:Container(
            height: 100.0,
            //adicinando borda
            decoration: BoxDecoration(
                border: Border.all(color: Colors.green,
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
                      " + ",

                      style:TextStyle(


                        color:Colors.green[800],
                        fontSize: 60.0,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ),
                ],
              ),
              //exercicio solcita o botão verde
              color:Colors.lightGreenAccent,
            ),

          )
      );
  }

  _botaoDiminuir() {
    return
      Padding(
          padding:EdgeInsets.only(top:20.0, bottom:20.0),

          child:Container(
            height: 100.0,
            //adicinando borda
            decoration: BoxDecoration(
                border: Border.all(color: Colors.red,
                  //espessura da borda
                  width:5.0,)
            ),
            child:RaisedButton(


              onPressed: _diminuir,
              child:Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      " - ",
                      style:TextStyle(
                        color:Colors.red[800],
                        fontSize: 60.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              //exercicio solcita o botão vermelho
              color:Colors.red[200],
            ),
          )
      );
  }

  _texto(textoParaExibir) {
    //inserindo um container.
    //para aplicar as propriedades
    return Container(

           height: 100.0,
           margin: const EdgeInsets.all(30.0),
           //margin:const EdgeInsetsDirectional.only(10.0),
           //padding: const EdgeInsets.all(10.0),
           decoration: _bordatexto(),

         child:Text(

      textoParaExibir,
      textAlign: TextAlign.center,
      style: TextStyle(
        //exercicio solicita texto em  fonte vermelha
        color:Colors.redAccent,
        fontWeight: FontWeight.bold,
        fontSize: 60.0,

      ),

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
