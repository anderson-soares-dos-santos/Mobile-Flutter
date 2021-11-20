import 'package:app_lista_de_compras/helper/AnotacaoHelper.dart';

class Anotacao {
  int id;
  String mercadoria;
  String quantidade;

  Anotacao(this.mercadoria, this.quantidade);

  Anotacao.fromMap(Map map) {
    this.id = map["id"];
    this.mercadoria = map["mercadoria"];
    this.quantidade = map["quantidade"];

  }

  Map toMap() {
    Map<String, dynamic> map = {
      "mercadoria": this.mercadoria,
      "quantidade": this.quantidade,

    };

    if (this.id != null) {
      map["id"] = this.id;
    }

    return map;
  }
}
