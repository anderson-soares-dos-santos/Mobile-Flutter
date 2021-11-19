import 'package:app_form_conta_bancaria_2_telas/pages/Dados.dart';
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
  String n3Sexo = 'FEMININO';
  String n4Escolaridade = 'MÉDIO';
  double n5Limite = 1000;
  bool n6Brasileiro = true;

  String infoResultado = "DADOS INFORMADOS:";
  String f1Nome = "____________________ ";
  String f2Idade = "_____ ";
  String f3Sexo = "__________ ";
  String f4Escolaridade = "____________________ ";
  String f5Limite = "__________ ";
  String f6Brasileiro = "___ ";

  void _visualizarForm(){
    setState(() {
      var n1Nome = (n1Controller.text);
      var n2Idade = (n2Controller.text);

      // informar ao usuário os dados do form digitado
      //infoResultado = "DADOS INFORMADOS";
      f1Nome = '  $n1Nome \n';
      f2Idade = ' $n2Idade \n';
      f3Sexo =  ' $n3Sexo \n';
      f4Escolaridade = ' $n4Escolaridade \n';
      f5Limite = ' $n5Limite \n';
      //COndiçaõ para inforamr se é BRASILEIRO ou NÃO
      if(n6Brasileiro == true)
      {
        f6Brasileiro = ' SIM ';
      }
      else
      {
        f6Brasileiro = ' NÃO ';
      }
      //f6Brasileiro = 'BRASILEIRO : $n6Brasileiro \n';
      //enviando dados armazenados nas variaveis para a proxima pagina
      _onClickTelaDados(
          context,
          Dados(f1Nome:f1Nome ,
                f2Idade:f2Idade ,
                f3Sexo:f3Sexo ,
                f4Escolaridade:f4Escolaridade ,
                f5Limite:f5Limite ,
                f6Brasileiro:f6Brasileiro
          ));
    });
  }


  @override
  Widget build(BuildContext dados) {
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
          "ABERTURA DE CONTA ",

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

            _campoNome("NOME : ", n1Controller),
            _campoNome("IDADE : ", n2Controller),

            //_campoSexo("SEXO : ", n3Sexo),
            //SEXO
            //inserir o label (Text) e o respectivo método
            //dentroo de um ROW
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.center,

              children:<Widget>[
                //label ao lado para o campo  _campoSexo(),
                Text(
                  "SEXO : ",

                  style:TextStyle(
                    color:Colors.black,

                  ),
                ),
                //aqui o metodo _campoSexo() que tras o DropdownButton
                _campoSexo(),
              ],
            ),

            // _campoNome("ESCOLARIDADE : ", n4Controller),
            //ESCOLARIDADE
            //inserir o label (Text) e o respectivo método
            //dentroo de um ROW
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.center,

              children:<Widget>[
                //label ao lado para o campo  _campoSexo(),
                Text(
                  "ESCOLARIDADE : ",

                  style:TextStyle(
                    color:Colors.black,

                  ),
                ),
                //aqui o metodo _campoSexo() que tras o DropdownButton
                _campoEscolaridade(),
              ],
            ),

            //_campoNome("LIMITE : ", n5Controller),
            //LIMITE
            //inserir o label (Text) e o respectivo método
            //dentroo de um ROW
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.center,

              children:<Widget>[
                //label ao lado para o campo _campoLimite(),
                Text(
                  "LIMITE : ",

                  style:TextStyle(
                    color:Colors.black,

                  ),
                ),
                //aqui o metodo _campoLimite() que tras o Slider
                _campoLimite(),
              ],
            ),


            // _campoNome("BRASILEIRO : ", n6Controller),
            //BRASILEIRO
            //inserir o label (Text) e o respectivo método
            //dentroo de um ROW
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.center,

              children:<Widget>[
                //label ao lado para o campo _campoLimite(),
                Text(
                  "BRASILEIRO : ",

                  style:TextStyle(
                    color:Colors.black,

                  ),
                ),
                //aqui o metodo _campoBrasileiro() que tras o Switch
                _campoBrasileiro(),
              ],
            ),

            //_campo("DIGITE O PREÇO DA GASOLINA", n2Controller),

            //BOTAO CONFIRMA
            //DENTRO DE UM ROW PARA ALINHAMENTO CENTRAL
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,

              children:<Widget>[
                //BOTAO
                _botaoConfirmar(),

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

  _campoSexo() {
    return DropdownButton<String>(
      value: n3Sexo,
      items: <String>['MASCULINO', 'FEMININO']
          .map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? valorSelecionado) {
        setState(() {
          n3Sexo = valorSelecionado!;
        });
      },
    );

  }

  _campoEscolaridade() {
    return DropdownButton<String>(
      value: n4Escolaridade,
      items: <String>['FUNDAMENTAL',
        'MÉDIO',
        'SUPERIOR ',
        'PÓS-GRADUAÇÃO',
        'MESTRADO',
        'DOUTORADO']
          .map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? valorSelecionado) {
        setState(() {
          n4Escolaridade = valorSelecionado!;
        });
      },
    );

  }

  _campoLimite() {
    return Slider(
      value: n5Limite,
      min: 1000,
      max: 10000,
      divisions: 20,
      label: n5Limite.round().toString(),
      onChanged: (double value) {
        setState(() {
          n5Limite = value;

        });
      },
    );

  }

  _campoBrasileiro() {
    return Switch(
      value: n6Brasileiro,
      onChanged: (value) {
        setState(() {
          n6Brasileiro = value;

        });
      },
      activeTrackColor: Colors.lightGreenAccent,
      activeColor: Colors.blue,

    );

  }

  _botaoConfirmar() {
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
              // onPressed: _somar,
              onPressed: _visualizarForm,
              child:Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      " CONFIRMAR ",

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

  _btn(BuildContext dados, Widget tela, String textoBotao) {
    return RaisedButton(
        color: Colors.green,
        child: Text(
          textoBotao,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        onPressed: () {
          _onClickTelaDados(dados, tela);
        });
  }

  _onClickTelaDados(BuildContext dados, Widget tela) {
    setState(() {
      Navigator.push(
        dados,
        MaterialPageRoute(builder: (BuildContext dados) {
          return tela;
        }),
      );
    });
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
          color:Colors.black,
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
          //exercicio solicita texto em  azul
          color:Colors.blueAccent,
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
        "assets/images/01bank.jpg",

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
