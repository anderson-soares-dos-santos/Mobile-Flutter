import 'package:flutter/material.dart';


class Dados extends StatelessWidget {
  //TextEditingController n1Controller = TextEditingController();
 // TextEditingController n2Controller = TextEditingController();
  //String n3Sexo = 'FEMININO';
 // String n4Escolaridade = 'MÉDIO';
  //double n5Limite = 1000;
  //bool n6Brasileiro = true;
  String infoResultado = "DADOS INFORMADOS:";
  String f1Nome = "____________________ ";
  String f2Idade = "_____ ";
  String f3Sexo = "__________ ";
  String f4Escolaridade = "____________________ ";
  String f5Limite = "__________ ";
  String f6Brasileiro = "___ ";
  //recebendo dados da pagina home
  Dados(
      {required this.f1Nome,
        required this.f2Idade,
        required this.f3Sexo,
        required this.f4Escolaridade,
        required this.f5Limite,
        required this.f6Brasileiro});
  /*
  Dados(
      {required this.f1Nome,
        required this.f2Idade,
        required this.f3Sexo,
        required this.f4Escolaridade,
        required this.f5Limite,
        required this.f6Brasileiro});

   */



  @override
  Widget build(BuildContext dados) {
    return Scaffold(
      //appBar: _appBar(),
      appBar: _titulo(),
      backgroundColor: Colors.white,
      body: _body(dados),
    );
  }

  _appBar(){
    return AppBar(
      //alterar setinha "para voltar"
      iconTheme: IconThemeData(
        color: Colors.black, //alterar a cor da setinhae
      ),
      title: Text('Dados Informados',
                  style:TextStyle(
                  color:Colors.red,
                   ),
                ),

      centerTitle: true,
      backgroundColor: Colors.blueAccent,
    );
  }

  _titulo() {
    return
      AppBar(
        //alterar setinha "para voltar"
        //exercico pede seta preta
        iconTheme: IconThemeData(
          color: Colors.black, //alterar a cor da setinhae
        ),
        title: Text(
          "DADOS INFORMADOS ",
          //exercicio solicita cor da fonte azul
          style:TextStyle(
            color:Colors.blueAccent,
          ),
        ),
        centerTitle: true,
        //exercicio solicita fundo de tela branco
        backgroundColor: Colors.white,

      );
  }

  _body(BuildContext dados) {
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
                  "NOME : ",
                  style:TextStyle(
                    color:Colors.black,

                  ),
                ),
                //aqui o metodo _texto(f1Nome), que tras
                // o nome digitado pelo usuário
                _texto(f1Nome),
              ],
            ),

            //IDADE DIGITADO
            //inserir o label (Text) e o respectivo método
            // dentro de um ROW
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.center,

              children:<Widget>[
                //label ao lado para o campo  _texto(f2Idade),
                Text(
                  "IDADE : ",
                  style:TextStyle(
                    color:Colors.black,

                  ),
                ),
                //aqui o metodo _texto(f2Idade), que tras
                // a idade digitado pelo usuário
                _texto(f2Idade),
              ],
            ),

            //SEXO DIGITADO/ESCOLHIDOP
            //inserir o label (Text) e o respectivo método
            // dentro de um ROW
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.center,

              children:<Widget>[
                //label ao lado para o campo _texto(f3Sexo),,
                Text(
                  "SEXO : ",
                  style:TextStyle(
                    color:Colors.black,

                  ),
                ),
                //aqui o metodo _texto(f3Sexo), que tras
                // o sexo digitado pelo usuário
                _texto(f3Sexo),
              ],
            ),
            //ESCOLARIDADE DIGITADO/ESCOLHIDO PELO USUARIO
            //inserir o label (Text) e o respectivo método
            // dentro de um ROW
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.center,

              children:<Widget>[
                //label ao lado para o campo _texto(f4Escolaridade),
                Text(
                  "ESCOLARIDADE : ",
                  style:TextStyle(
                    color:Colors.black,

                  ),
                ),
                //aqui o metodo _texto(f4Escolaridade), que tras
                //a escolaridade digitado pelo usuário
                _texto(f4Escolaridade),
              ],
            ),
            //LIMITE DIGITADO/ESCOLHIDO PELO USUARIO
            //inserir o label (Text) e o respectivo método
            // dentro de um ROW
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.center,

              children:<Widget>[
                //label ao lado para o campo _texto(f5Limite),
                Text(
                  "LIMITE : ",
                  style:TextStyle(
                    color:Colors.black,

                  ),
                ),
                //aqui o metodo _texto(f5Limite), que tras
                //O LIMITE digitado pelo usuário
                _texto(f5Limite),
              ],
            ),
            //BRASILEIRO (SIM OU NÃO) DIGITADO/ESCOLHIDO PELO USUARIO
            //inserir o label (Text) e o respectivo método
            // dentro de um ROW
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.center,

              children:<Widget>[
                //label ao lado para o campo _texto(f6Brasileiro),
                Text(
                  "BRASILEIRO : ",
                  style:TextStyle(
                    color:Colors.black,

                  ),
                ),
                //aqui o metodo _texto(f6Brasileiro), que tras
                //a opção informada pelo usuario
                // BRASILIERO (SIM OU NAO)
                _texto(f6Brasileiro),
               /*
                RaisedButton(
                  child: Text('VOLTAR'),
                  onPressed: () => _onClickVoltar(dados),
                )
                */
              ],
            ),
          ],
        ),
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


  _onClickVoltar(BuildContext dados) {
    Navigator.pop(dados);
  }


 /*
  _body(){
    return Center(
      //padding: EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _texto('Nome: ',valueNome),
          _texto('Idade: ',valueIdade),
          _texto('Sexo: ',valueSexo),
          _texto('Escolaridade: ',valueEscolaridade),
          _texto('Limite: ',valueLimite),
          _texto('Brasileiro: ',valueNacionalidade),
        ],
      ),
    );
  }

  _texto(String inicio,value){
    return Text('$inicio $value',
      style: TextStyle(
        color: Colors.blueAccent.shade400,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
*/
}