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
  String f1Anuncio01 = "Bicicleta infantil \n"
                       "Valor : R\$ 200,00\n"
                        "Cidade :Santos\\SP \n"
                        "Bicicleta infantil , muito bem conservada e bonita.\n"
                         "Tudo funcionando.\n"
                         "Contato :nonoono@biker.non.nom ";

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
          "ANÚNCIOS ",

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
              _foto_titulo('00_emoji_anuncio.jpg'),

              //1º anuncio
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.center,

                children:<Widget>[

                  //aqui o metodo _foto() que tras a imagem do anincio
                  _foto_titulo('03_emoji_bicicleta.jpg'),
                  //label/texto abaixo da imagem,

                  Text(
                    "Bicicleta infantil \n"
                        "Valor : R\$ 200,00\n"
                        "Cidade :Santos\\SP \n"
                        "Bicicleta infantil , muito bem conservada e bonita.\n"
                        "Tudo funcionando.\n"
                        "Contato :nonoono@biker.non.nom ",
                    style:TextStyle(
                      color:Colors.black,

                    ),
                  ),
                ],
              ),
              //2º anuncio
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.center,

                children:<Widget>[

                  //aqui o metodo _foto() que tras a imagem do anincio
                  _foto_titulo('04_emoji_carro.jpg'),
                  //label/texto abaixo da imagem,

                  Text(
                    "Veículo FORD KA HATCH 2019/2020 \n"
                        "Valor : R\$ 52000,00\n"
                        "Cidade :Praia Grande\\SP \n"
                        "Trabalhamos com Veículos de alta qualidade\,\n"
                        "revisados e periciados garantindo total procedência e\n"
                        "qualidade do nosso estoque\.Possuímos parceria com os\n"
                        "melhores bancos do mercado com taxas diferenciadas \.\n"
                        "Contato :nonoono@biker.non.nom ",
                    style:TextStyle(
                      color:Colors.black,

                    ),
                  ),
                ],
              ),
              _carrosel(),
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
  _foto(String nomeFoto) {
    return Image.asset(
      "assets/images/$nomeFoto",
      height: 300,
      width: 300,
      //fit: BoxFit.fill,
      //fit: BoxFit.contain,
      fit: BoxFit.cover,
    );
  }


  _foto_titulo(String nomeFoto) {
    return Center(
      child: Image.asset(
        "assets/images/$nomeFoto",

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

  _carrosel() {
    return Container(
      //margin: EdgeInsets.all(5),
      //margin: EdgeInsets.all(20),
      margin: EdgeInsets.only(top: 20, right: 20),
      height: 300,
      child: PageView(
        children: <Widget>[

            //anuncio 01
            _foto('03_emoji_bicicleta.jpg'),
            //label/texto abaixo da imagem,
            Text(
              "Veículo FORD KA HATCH 2019/2020 \n"
                  "Valor : R\$ 52000,00\n"
                  "Cidade :Praia Grande\\SP \n"
                  "Trabalhamos com Veículos de alta qualidade\,\n"
                  "revisados e periciados garantindo total procedência e\n"
                  "qualidade do nosso estoque\.Possuímos parceria com os\n"
                  "melhores bancos do mercado com taxas diferenciadas \.\n"
                  "Contato :nonoono@biker.non.nom ",
              style:TextStyle(
                color:Colors.black,

              ),
            ),


          _foto('04_emoji_carro.jpg'),
          _foto('05_emoji_joystick.jpg'),
          _foto('06_emoji_laptop.jpg'),
          _foto('07_emoji_cahorro.jpg'),
        ],
      ),
    );
  }


}
