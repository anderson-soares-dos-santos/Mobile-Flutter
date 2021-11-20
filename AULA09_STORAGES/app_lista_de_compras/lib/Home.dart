import 'package:flutter/material.dart';
import 'package:app_lista_de_compras/helper/AnotacaoHelper.dart';
import 'package:app_lista_de_compras/model/Anotacao.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _mercadoriaController = TextEditingController();
  TextEditingController _quantidadeController = TextEditingController();

  var _db = AnotacaoHelper();
  List<Anotacao> _anotacoes = List<Anotacao>();

  _exibirTelaCadastro({Anotacao anotacao}) {
    String textoSalvarAtualizar = "";
    if (anotacao == null) {
      //salvando
      _mercadoriaController.text = "";
      _quantidadeController.text = "";
      textoSalvarAtualizar = "Salvar";
    } else {
      //atualizar
      _mercadoriaController.text = anotacao.mercadoria;
      _quantidadeController.text = anotacao.quantidade;
      textoSalvarAtualizar = "Atualizar";
    }
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("$textoSalvarAtualizar anotação"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextField(
                  controller: _mercadoriaController,
                  autofocus: true,
                  decoration: InputDecoration(
                      labelText: "Mercadoria", hintText: "Digite a mercadoria..."),
                ),
                TextField(
                  controller:  _quantidadeController,
                  decoration: InputDecoration(
                      labelText: "Quantidade", hintText: "Digite a quantidade..."),
                )
              ],
            ),
            actions: <Widget>[
              FlatButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text("Cancelar")),
              FlatButton(
                  onPressed: () {
                    //salvar
                    _salvarAtualizarAnotacao(anotacaoSelecionada: anotacao);

                    Navigator.pop(context);
                  },
                  child: Text(textoSalvarAtualizar))
            ],
          );
        });
  }

  _recuperarAnotacoes() async {
    List anotacoesRecuperadas = await _db.recuperarAnotacoes();

    List<Anotacao> listaTemporaria = List<Anotacao>();
    for (var item in anotacoesRecuperadas) {
      Anotacao anotacao = Anotacao.fromMap(item);
      listaTemporaria.add(anotacao);
    }

    setState(() {
      _anotacoes = listaTemporaria;
    });
    listaTemporaria = null;

    //print("Lista anotacoes: " + anotacoesRecuperadas.toString() );
  }

  _salvarAtualizarAnotacao({Anotacao anotacaoSelecionada}) async {
    String mercadoria =  _mercadoriaController.text;
    String quantidade = _quantidadeController.text;

    if (anotacaoSelecionada == null) {
      //salvar
      Anotacao anotacao =
      Anotacao(mercadoria, quantidade);
      int resultado = await _db.salvarAnotacao(anotacao);
    } else {
      //atualizar
      anotacaoSelecionada.mercadoria = mercadoria;
      anotacaoSelecionada.quantidade = quantidade;
      int resultado = await _db.atualizarAnotacao(anotacaoSelecionada);
    }

    _mercadoriaController.clear();
    _quantidadeController.clear();

    _recuperarAnotacoes();
  }

  _formatarData(String data) {
    initializeDateFormatting("pt_BR");

    //Year -> y month-> M Day -> d
    // Hour -> H minute -> m second -> s
    //var formatador = DateFormat("d/MMMM/y H:m:s");
    var formatador = DateFormat.yMd("pt_BR");

    DateTime dataConvertida = DateTime.parse(data);
    String dataFormatada = formatador.format(dataConvertida);

    return dataFormatada;
  }

  _removerAnotacao(int id) async {
    await _db.removerAnotacao(id);

    _recuperarAnotacoes();
  }

  @override
  void initState() {
    super.initState();
    _recuperarAnotacoes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      appBar: AppBar(
        title: Text("Minhas anotações"),
        backgroundColor: Colors.black,
      ),
     */
     appBar: _titulo(),
      body: Column(
        children: <Widget>[
          Expanded(
              child: ListView.builder(
                  itemCount: _anotacoes.length,
                  itemBuilder: (context, index) {
                    final anotacao = _anotacoes[index];

                    return Card(
                      child: ListTile(
                        //title: Text(anotacao.mercadoria),
                        title: Text(
                            "${(anotacao.mercadoria)} ( ${anotacao.quantidade} )"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                _exibirTelaCadastro(anotacao: anotacao);
                              },
                              child: Padding(
                                padding: EdgeInsets.only(right: 16),
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _removerAnotacao(anotacao.id);
                              },
                              child: Padding(
                                padding: EdgeInsets.only(right: 0),
                                child: Icon(
                                  Icons.remove_circle,
                                  color: Colors.red,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),

      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          child: Icon(Icons.add),
          onPressed: () {
            _exibirTelaCadastro();
          }),
    );


  }

}
_titulo() {
  return
    AppBar(
      title: Text(
        "MINHA LISTA DE COMPRAS ",
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



