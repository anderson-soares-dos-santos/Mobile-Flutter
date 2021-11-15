import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class widgetHome extends StatefulWidget {
  const widgetHome({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<widgetHome> {

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
          "VAGAS  ",

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
       child:  Container(
        color: Colors.white,
         //espaçamento
         padding: const EdgeInsets.all(15.0),

         child:Column(
          //alinhamento a esquerda
          //mainAxisAlignment: MainAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          //PARA "ESTICAR" HORIZONTALMENTE TODOS SO COMPONENTES
          mainAxisSize: MainAxisSize.max,
          children:<Widget>[
            //FOTO APOS TITULO
            _foto_titulo('00_emoji_anuncio.jpg'),
              //1º anuncio
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children:<Widget>[
                  //aqui o metodo _foto() que tras a imagem do anincio
                  _foto_titulo('01_emoji_tecnologo.jpg'),
                  //label/texto abaixo da imagem,
                  //titulo do anuncio
                  Text(
                     "Programador Mobile JR.  ",
                      //exercicio solicita cor da fonte azul
                      style:TextStyle(
                        color:Colors.blue,
                      ),
                    ),
                   //descricao do anuncio
                   Text(
                        "Valor : R\$ 10.000,00 (Bruto mensal\n"
                        "Cidade :São Paulo\\SP \n"
                        "DESCRIÇÃO:Desenvovlimento e manutenção de aplicações mobile com software"
                        "SaaS;Desenvovimento de novas funcionalidades e correções em aplicações"
                        "Mobile;Desenvovimento de APIs para comunicação com back-end;\n"
                        "Contato :nonoono@mobile.non.nom ",
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
                  _foto_titulo('01_emoji_tecnologo.jpg'),
                  //label/texto abaixo da imagem,
                  //titulo do anuncio
                  Text(
                    "Analista TI Sr.  ",
                    //exercicio solicita cor da fonte azul
                    style:TextStyle(
                      color:Colors.blue,
                    ),
                  ),
                  //descricao do anuncio
                  Text(
                        "Valor : R\$ 12.000,00 (Bruto mensal\n"
                        "Cidade :São Paulo\\SP \n"
                        "DESCRIÇÃO:Imprescindível conhecimento em Datasul/ "
                        "ERP (ENTERPRISE RESOURCE PLANNING)/ Servidores.\n"
                        "Experiência em Hardware, Rede, Internet, Windows, Office e Telefonia.\n"
                        " Conhecimento de negócio dos módulos financeiros (APB, ACR, CMG entre outros).\n"
                        "Conhecer linguagem Progress.\n"
                        "Conhecimento em ISO 9001/ 2015.;\n"
                        "Contato :nonoono@tisranalista.non.nom ",
                    style:TextStyle(
                      color:Colors.black,

                    ),
                  ),
                ],
              ),
              //3º anuncio
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.center,

                children:<Widget>[

                  //aqui o metodo _foto() que tras a imagem do anincio
                  _foto_titulo('02_emoji_gerente.jpg'),
                  //label/texto abaixo da imagem,
                  //titulo do anuncio
                  Text(
                    "Gerente de TI  ",
                    //exercicio solicita cor da fonte azul
                    style:TextStyle(
                      color:Colors.blue,
                    ),
                  ),
                  //descricao do anuncio
                  Text(
                    "Valor : R\$ 20.000,00 (Bruto mensal\n"
                        "Cidade :São Paulo\\SP \n"
                        "Gerenciar toda a área de Tecnologia da Informação da companhia."
                        " Estabelecer padrões, coordenar projetos, pesquisar e "
                        "oferecer soluções para ambientes informatizados, "
                        "além de garantir uma infraestrutura com segurança, "
                        "eficiência e eficácia para o negócio.\n "
                        "IDIOMAS:Idiomas:Inglês - Nível Intermediário\n"
                         "Outros requisitos:Graduação nas áreas de Tecnologia da Informação;"
                         "Gerência da área de TI no segmento industrial;"
                         "Gestão de Projetos;Governança de TI;Infraestrutura de Rede;"
                         "Telecomunicações;Linguagem de Programação Web;Telefonia IP;"
                         "Banco de Dados SQL;Windows Server.\n"
                         "Contato :nonoono@tisranalista.non.nom ",
                    style:TextStyle(
                      color:Colors.black,
                    ),
                  ),
                ],
              ),


            //caso deseje deslizar os
            //anuncios na vertical
            //_carrosel(),
          ],

        ),
       ),
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

  //caso deseje deslizar os
  //anuncios na vertical
  _carrosel() {
    return Container(
      //margin: EdgeInsets.all(5),
      //margin: EdgeInsets.all(20),
      margin: EdgeInsets.only(top: 20, right: 20),
      height: 300,
      child: PageView(
        children: <Widget>[

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
          //3º anuncio
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.center,

            children:<Widget>[

              //aqui o metodo _foto() que tras a imagem do anincio
              _foto_titulo('05_emoji_joystick.jpg'),
              //label/texto abaixo da imagem,

              Text(
                "Video-Game Arcade Streer Fighter II \n"
                    "Valor : R\$ 1000,00\n"
                    "Cidade :Praia Grande\\SP \n"
                    "Máquina super bem conservada\,\n"
                    "Controles e botões revisados e\n"
                    "Saída auxiliar com conexão HDMI\.Possuímos parceria com os\n"
                    "melhores bancos do mercado com taxas diferenciadas \.\n"
                    "Contato :nonoono@gamer.non.nom ",
                style:TextStyle(
                  color:Colors.black,

                ),
              ),
            ],
          ),
          //4º anuncio
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.center,

            children:<Widget>[

              //aqui o metodo _foto() que tras a imagem do anincio
              _foto_titulo('06_emoji_laptop.jpg'),
              //label/texto abaixo da imagem,

              Text(
                "Laptop Lenovo Yoga 7i com Mouse YogaVideo- \n"
                    "Valor : R\$ 5000,00\n"
                    "Cidade :Praia Grande\\SP \n"
                    "Máquina super bem conservada\,\n"
                    "Com processadores Intel® Core™ de 11ª geração\,\n"
                    "placa de vídeo Intel® Iris® Xe e duas portas Thunderbolt ™ 4\,\n"
                    "\.o notebook Yoga 7i 2 em 1 reúne estilo\,\n"
                    "desempenho e portabilidade em uma só máquina\."
                    " Com uma tela Full HD de 14” e câmera HD 720p\,\n"
                    "desfrute até 16 horas de bateria\.\n"
                    "Contato :nonoono@computer.non.nom ",
                style:TextStyle(
                  color:Colors.black,

                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
