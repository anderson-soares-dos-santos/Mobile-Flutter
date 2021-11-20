import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pessoal.dart';
import 'formacao.dart';
import 'experiencia.dart';

class widgetHome extends StatefulWidget {
  const widgetHome({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<widgetHome> {
  int _currentPage = 0;
  final telas = [
    Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _texto('ANDERSON SOARES DOS SANTOS'),
          ],
        )),
    Pessoal(),
    Formacao(),
    Experiencia(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

     appBar: _titulo(),
      //appBar: _appBar(),
      //para garantir o fundo de tela na cor desejada
      backgroundColor: Colors.white,

      body: telas[_currentPage],
      drawer: Drawer(
        child: ListView(
            children: [
        /*      _photo(),
              //FlutterLogo(size: 45),
              Text('ANDERSON SOARES DOS SANTOS',
                textAlign: TextAlign.center,),

         */
              UserAccountsDrawerHeader(

                accountName: Text('ANDERSON SOARES DOS SANTOS'),
                accountEmail: Text('andersat_pg@hotmail.com'),

                currentAccountPicture: CircleAvatar(

                backgroundImage: AssetImage('assets/images/01_emoji_tecnologo.jpg'),

                ),
              ),
              ListTile(
                title: Text('HOME'),
                subtitle: Text('SEJA BEM VINDO AO MY PROFILE'),
                trailing: Icon(Icons.arrow_forward),
                onTap: (){
                  setState((){
                    _currentPage = 0;
                  });
                },
              ),
              ListTile(
                title: Text('PESSOAL'),
                subtitle: Text('QUEM SOU EU'),
                trailing: Icon(Icons.person_search_sharp),
                onTap: (){
                  setState((){
                    _currentPage = 1;
                  });
                },
              ),
              ListTile(
                title: Text('FORMAÇÃO'),
                subtitle: Text('MEUS CURSOS E CERTIFICAÇÕES'),
                trailing: Icon(Icons.bookmark_outline),
                onTap: (){
                  setState((){
                    _currentPage = 2;
                  });
                },
              ),
              ListTile(
                title: Text('EXPERIÊNCIA'),
                subtitle: Text('MINHA EXPERIÊNCIA PROFISSIONAL'),
                trailing: Icon(Icons.downloading_rounded),
                onTap: (){
                  setState((){
                    _currentPage = 3;
                  });
                },
              ),
            ]
        ),
      ),
    );
  }

  }

  _titulo() {
    return
      AppBar(
        //alterar setinha "para voltar"
        iconTheme: IconThemeData(
          color: Colors.black, //alterar a cor da setinhae
        ),
        title: Text(
          "MY PROFILE ",
          //exercicio solicita cor da fonte PRETA
          style:TextStyle(
            color:Colors.black,

          ),
        ),
        centerTitle: true,
        //exercicio solicita fundo de tela branco
        backgroundColor: Colors.white,

      );
  }


_photo(){
  return Image.asset("assets/images/01_emoji_tecnologo.jpg",
    fit: BoxFit.contain,
    height: 250,
    width: 250,
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

  _foto() {
    return Center(
      child: Image.asset(
        "assets/images/01_emoji_tecnologo.jpg",

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



