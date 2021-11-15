import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class widgetHome extends StatefulWidget {
  const widgetHome({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<widgetHome> {
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();
  double n1Valor = 0;
  String n3MoedaDe = 'REAL(R\$)';
  String n4MoedaPara ='DOLAR(US\$)';


  String infoResultado = "DADOS INFORMADOS:";
  String f1Valor = "____________________ ";

  String f3MoedaDe = "__________ ";
  String f4MoedaPara = "____________________ ";
  double CotacaoDolar = 5.46; // valor da cotação do dólar em reais(R$)
  double CotacaoEuro = 6.24; // valor da cotação do Euro em reais(R$)
  double CalcConversao = 0; // valor do calculo da cotação realizada

  void _visualizarForm(){
    setState(() {
      var n1Nome = (n1Controller.text);
      // informar ao usuário os dados do form digitado
      //infoResultado = "DADOS INFORMADOS";
      f1Valor = '  $n1Nome \n';
      f3MoedaDe =  ' $n3MoedaDe \n';
      f4MoedaPara = ' $n4MoedaPara \n';
    });
  }

  void _converter(){
    setState(() {
      n1Valor = double.parse(n1Controller.text);
      //CotacaoDolar; // valor da cotação do dólar em reais(R$)
      //CONVERTER DE REAL PARA DOLAR
      if(n3MoedaDe == 'REAL(R\$)' && n4MoedaPara == 'DOLAR(US\$)' )
      {
        //fazendo o calculo
        // conversao de REAL PARA DOLAR
        CalcConversao = n1Valor / CotacaoDolar ;

        // informar ao usuário os dados do form digitado
        infoResultado = "RESULTADO";
        f1Valor = ' US\$ $CalcConversao \n';
        f3MoedaDe =  ' $n3MoedaDe \n';
        f4MoedaPara = ' $n4MoedaPara \n';
      }
      //CONVERSAO DE DOLAR PARA REAL
      else if(n3MoedaDe == 'DOLAR(US\$)' && n4MoedaPara == 'REAL(R\$)' )
      {
        //fazendo o calculo
        //CONVERSAO DE DOLAR PARA REAL
        CalcConversao = n1Valor * CotacaoDolar ;
        //infoResultado = ' VALOR EM REAL(R\$) $CalcConversao ';
        infoResultado = "RESULTADO";
        f1Valor = ' R\$ $CalcConversao \n';
        f3MoedaDe =  ' $n3MoedaDe \n';
        f4MoedaPara = ' $n4MoedaPara \n';

      }
      //CONVERSAO DE DOLAR PARA EURO
      else if(n3MoedaDe == 'DOLAR(US\$)' && n4MoedaPara == 'EURO(€\$)' )
      {
        //fazendo o calculo
        //CONVERSAO DE DOLAR PARA REAL
        //1º COVERTE DE DOLAR PARA REAL
        CalcConversao = n1Valor * CotacaoDolar ;
        //DEPOIS DE REAL PARA EURO
        CalcConversao = CalcConversao / CotacaoEuro ;
        //infoResultado = ' VALOR EM EURO(€\$) $CalcConversao ';
        infoResultado = "RESULTADO";
        f1Valor = '€\$ $CalcConversao \n';
        f3MoedaDe =  ' $n3MoedaDe \n';
        f4MoedaPara = ' $n4MoedaPara \n';
      }
      //CONVERSAO DE EURO PARA DOLAR
      else if(n3MoedaDe =='EURO(€\$)'  && n4MoedaPara == 'DOLAR(US\$)' )
      {
        //fazendo o calculo
        //CONVERSAO DE EURO PARA DOLAR
        //1º CONVERTE DE EURO PARA REAL
        CalcConversao = n1Valor * CotacaoEuro ;
        //DEPOIS DE REAL PARA DOLAR
        CalcConversao = CalcConversao / CotacaoDolar ;
        //infoResultado = ' VALOR EM DOLAR(US\$) $CalcConversao ';
        infoResultado = "RESULTADO";
        f1Valor = 'US\$ $CalcConversao \n';
        f3MoedaDe =  ' $n3MoedaDe \n';
        f4MoedaPara = ' $n4MoedaPara \n';

      }
      //CONVERSAO DE EURO PARA REAL
      else if(n3MoedaDe =='EURO(€\$)'  && n4MoedaPara == 'REAL(R\$)' )
      {
        //fazendo o calculo
        //CONVERSAO DE EURO PARA DOLAR
        //1º CONVERTE DE EURO PARA REAL
        CalcConversao = n1Valor * CotacaoEuro ;
       // infoResultado = '  VALOR EM REAL(R\$) $CalcConversao ';
        infoResultado = "RESULTADO";
        f1Valor = 'R\$ $CalcConversao \n';
        f3MoedaDe =  ' $n3MoedaDe \n';
        f4MoedaPara = ' $n4MoedaPara \n';
      }
      //CONVERSAO DE REAL PARA EURO
      else if(n3MoedaDe =='EURO(€\$)'  && n4MoedaPara == 'REAL(R\$)' )
      {
        //fazendo o calculo
        //CONVERSAO DE REAL  PARA EURO
        //1º CONVERTE DE EURO PARA REAL
        CalcConversao = n1Valor / CotacaoEuro ;
        //infoResultado = '   VALOR EM EURO(€\$) $CalcConversao ';
        infoResultado = "RESULTADO";
        f1Valor = '€\$ $CalcConversao \n';
        f3MoedaDe =  ' $n3MoedaDe \n';
        f4MoedaPara = ' $n4MoedaPara \n';
      }
      else
      {
        //CASO n3MoedaDe == n4MoedaPara
        //VALOR "DE"  == "PARA"

        CalcConversao = n1Valor ;
        //infoResultado = '   VALOR EM $n3MoedaDe: $CalcConversao ';
        infoResultado = "RESULTADO";
        f1Valor = ' $CalcConversao \n';
        f3MoedaDe =  ' $n3MoedaDe \n';
        f4MoedaPara = ' $n4MoedaPara \n';
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
          "CONVERSOR DE MOEDAS\n"
           "  DÓLAR ,REAL E EURO ",

          //exercicio solicita cor da fonte vermelha
          style:TextStyle(
            color:Colors.red,

          ),
        ),
        centerTitle: true,
        //exercicio solicita fundo de tela branco
        backgroundColor: Colors.white,

      );
  }
/*

 */
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
            //FOTO APOS TITULO
            _foto(),
            //para digitar
            //VALOR
            _campoNome("VALOR : ", n1Controller),
            //SELECAO DA MOEDA A SER CONVERTIDA
            // "DE:"
            //inserir o label (Text) e o respectivo método
            //dentroo de um ROW
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.center,

              children:<Widget>[
                //label ao lado para o campo  _moedaDe(),
                Text(
                  "DE : ",

                  style:TextStyle(
                    color:Colors.black,

                  ),
                ),
                //aqui o metodo _moedaDe(), que tras o DropdownButton
                _moedaDe(),
              ],
            ),

            //SELECAO DA MOEDA A SER CONVERTIDA
            // "DE:"
            //inserir o label (Text) e o respectivo método
            //dentroo de um ROW
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.center,

              children:<Widget>[
                //label ao lado para o campo _moedaPara(),
                Text(
                  "PARA : ",

                  style:TextStyle(
                    color:Colors.black,

                  ),
                ),
                //aqui o metodo _moedaPara(), que tras o DropdownButton
                _moedaPara(),
              ],
            ),

            //BOTAO CONFIRMA
            //DENTRO DE UM ROW PARA ALINHAMENTO CENTRAL
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,

              children:<Widget>[
                //BOTAO
                _botaoConverter(),

              ],
            ),

            //*****TEXTO APOS PRESSIONAR BOTAO*****

            //o respectivo método  _textoTitulo(infoResultado)
            //dentroo de um ROW
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                //aqui o metodo _textoTitulo(infoResultado)
                // que tras o Titulo(infoResultado)
                _textoTitulo(infoResultado),
              ],
            ),

            //NOME DIGITADO
            //inserir o label (Text) e o respectivo método
            //dentro de um ROW
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.center,

              children:<Widget>[
                //label ao lado para o campo _texto(f1Nome),
                Text(
                  "VALOR : ",
                  style:TextStyle(
                    color:Colors.black,

                  ),
                ),
                //aqui o metodo _texto(f1Nome), que tras
                // o nome digitado pelo usuário
                _texto(f1Valor),
              ],
            ),




            //inserir o label (Text) e o respectivo método
            // dentro de um ROW
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.center,

              children:<Widget>[
                //label ao lado para o campo _texto(f3MoedaDe),,
                Text(
                  "DE : ",
                  style:TextStyle(
                    color:Colors.black,

                  ),
                ),
                //aqui o metodo _texto(f3MoedaDe), que tras
                // A moeda escolhida pelo pelo usuário
                _texto(f3MoedaDe),
              ],
            ),
            //ESCOLARIDADE DIGITADO/ESCOLHIDO PELO USUARIO
            //inserir o label (Text) e o respectivo método
            // dentro de um ROW
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.center,

              children:<Widget>[
                //label ao lado para o campo _texto(f4MoedaPara),
                Text(
                  "PARA : ",
                  style:TextStyle(
                    color:Colors.black,

                  ),
                ),
                //aqui o metodo _texto( f4MoedaPara), que tras
                //a moeda escolhida pelo usuário
                _texto( f4MoedaPara),
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
      textAlign: TextAlign.start,
      style:TextStyle(
          color:Colors.black,
          fontSize: 12.0
      ),
      controller: objController,
    );
  }

  _campoNome(labelTitulo, objController) {
    return TextFormField(
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
        //fontSize: 12.0
      ),
      controller: objController,
    );
  }

  _moedaDe() {
    return DropdownButton<String>(
      value: n3MoedaDe,
      items: <String>['DOLAR(US\$)',
                      'REAL(R\$)',
                      'EURO(€\$)'
                      ]
          .map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? valorSelecionado) {
        setState(() {
            n3MoedaDe = valorSelecionado!;
        });
      },
    );

  }

  _moedaPara() {
    return DropdownButton<String>(
      value: n4MoedaPara,
      items: <String>['DOLAR(US\$)',
        'REAL(R\$)',
        'EURO(€\$)'
      ]
          .map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? valorSelecionado) {
        setState(() {
          n4MoedaPara = valorSelecionado!;
        });
      },
    );

  }

  _botaoConverter() {
    return
      Padding(
          padding:EdgeInsets.only(top:20.0, bottom:20.0),

          child:Container(

            height: 40.0,
            //adicinando borda
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black,
                  //espessura da borda
                  width:5.0,)
            ),


            child:RaisedButton(

              // chamando método ao clicar no botão
              // onPressed: //_visualizarForm,,
               onPressed: _converter,


              child:Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      " CONVERTER ",

                      style:TextStyle(
                        color:Colors.black,
                        fontSize: 12.0,
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

      height: 15.0,
      margin: const EdgeInsets.all(5.0),
      //margin:const EdgeInsetsDirectional.only(10.0),
      //padding: const EdgeInsets.all(10.0),
      //decoration: _bordatexto(),

      child:Text(

        textoParaExibir,
        textAlign: TextAlign.start,
        style: TextStyle(
          //Personlizar texto
          color:Colors.green,
          fontWeight: FontWeight.bold,

          //fontSize: 12.0,
          //sublinhar texto
          decoration: TextDecoration.underline,
        ),

      ),
    );

  }

  _textoTitulo(textoParaExibir) {
    //inserindo um container.
    //para aplicar as propriedades
    return Container(

      height: 15.0,
      //Espaçamento de todos os lados
      margin: const EdgeInsets.all(5.0),
      //margin:const EdgeInsetsDirectional.only(10.0),
      //padding: const EdgeInsets.all(10.0),
      //decoration: _bordatexto(),

      child:Text(

        textoParaExibir,
        textAlign: TextAlign.start,
        style: TextStyle(
          //exercicio solicita texto em  VERDA
          color:Colors.green,
          fontWeight: FontWeight.bold,

          //fontSize: 12.0,
          //sublinhar texto
          //decoration: TextDecoration.underline,
        ),

      ),
    );

  }

  _foto() {
    return Center(
      child: Image.asset(
        "assets/images/00_emoji_cambio.jpg",

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
