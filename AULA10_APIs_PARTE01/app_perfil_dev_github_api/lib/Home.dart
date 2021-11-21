import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //declarando as variaveis

  TextEditingController gitController = TextEditingController();
  String infoGit = '';
  //String fotoGit = 'assets/images/01_github.jpg';
 String fotoGit = 'https://cdn-icons-png.flaticon.com/512/25/25231.png';

  /*
  (Utilizando a API do GitHub: https://api.github.com/users/<< seu login >>)
  */
   //metodo
  _consultarGITHUB() async {
    String url = 'https://api.github.com/users/${gitController.text}';

    print(url);
    http.Response response = await http.get(Uri.parse(url));
    Map<String, dynamic> retorno = json.decode(response.body);

    if (retorno['id'] == null) {
      infoGit = 'Usuário não localizado';
      fotoGit = 'assets/images/01_github.jpg';
    } else {
      fotoGit = retorno['avatar_url'];
      String id = retorno['id'].toString();
      String nome = retorno['name'];
      String repositorios = retorno['public_repos'].toString();
      String criadoEm = retorno['created_at'].toString();
      String seguidores = retorno['followers'].toString();
      String seguindo = retorno['following'].toString();
      infoGit ='\n ID: $id \n'
               ' Nome: $nome \n'
               ' Repositórios: $repositorios \n'
               ' Criado em: $criadoEm \n'
               ' Seguidores: $seguidores \n'
               ' Seguindo: $seguindo';
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      body: _corpo(),
    );
  }
  _titulo() {
    return
      AppBar(
        title: Text(
          "PERFIL DOS DEVs ",
          //exercicio solicita cor da fonte BRANCA
          style:TextStyle(
            color:Colors.white,
          ),
        ),
        centerTitle: true,
        // fundo de tela PRETO
        backgroundColor: Colors.black,
      );
  }

  _corpo() {
    return Container(
        padding: EdgeInsets.all(15),
        color: Colors.white,
        child: Column(children: <Widget>[
          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                labelText: "Digitar o login no Git...",
                labelStyle: TextStyle(color: Colors.black)),
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.black, fontSize: 20),
            controller:  gitController,
          ),
          Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Container(
                              height: 50,
                              child: _botaoConfirmar()
                               )
                 ),
          //imagem do perfil
         _foto(),



          //Apresentação da consulta
          _texto(infoGit),
        ]
        )
    );
  }

  _foto() {
    return Center(
      child: Image.network('$fotoGit' == '' ? 'assets/images/01_github.jpg' : fotoGit,
          height: 125, width: 125),
    );
  }

_botaoConfirmar() {
  return
    RaisedButton(

            // chamando método ao clicar no botão
            // onPressed: _somar,
            onPressed: _consultarGITHUB,

              child:Text(
                    " CONSULTAR ",
                    style:TextStyle(
                      color:Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              color: Colors.black,

    );
}

_texto(textoParaExibir) {
  //inserindo um container.
  //para aplicar as propriedades
  return
    Text(
      textoParaExibir,
      textAlign: TextAlign.start,
      style: TextStyle(
        //Personlizar texto
        color:Colors.black,
        fontWeight: FontWeight.bold,

        fontSize: 20.0,
        //sublinhar texto
        //decoration: TextDecoration.underline,
      ),
  );

}

}
