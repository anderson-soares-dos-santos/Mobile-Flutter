import 'package:flutter/material.dart';

class widgetHome extends StatelessWidget {
  const widgetHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Hello"),
        centerTitle: true,
      ),
      body: _body(),
      //floatingActionButton: FloatingActionButton(onPressed: (){}),


    );
  }
  _body(){
    return  Container(
      //extedendo o cntainer por toda a tela na horizontal
      height:double.infinity ,
      //extedendo o cntainer por toda a tela na vertical
      width:double.infinity ,
      color: Colors.black,
     /*
      child: Center(
        //child:_text()
        child:_button()
      ),
    */
     //exibri varios elemntos ao lado do outro
     //usando o ROW
    /*
     child:Row(
        children: <Widget>[
          _button(),
          _button(),
          _button(),
        ],
     ),
    */
      //exibri varios elemntos ao lado do outro na vertical
      //usando o COLUMN
      child:Column(
        //aproveitamento minimo/maximo dos compontens na tela
       // mainAxisSize: MainAxisSize.min,
        mainAxisSize: MainAxisSize.max,
        //alinamento no centro , final , ou inicio
        mainAxisAlignment: MainAxisAlignment.center,
        //alinahmento detodo bloco container
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _button(),
          _button(),
          _button(),
        ],
      ),
    );

  }
 _text(){
   return Text("Hello Turma!",
     style: TextStyle(
       fontSize: 30,
       color: Colors.blue,
       fontWeight: FontWeight.bold,
       fontStyle: FontStyle.italic,
       decoration: TextDecoration.underline,
       //decoration: TextDecoration.overline,
       decorationColor: Colors.red,
       decorationStyle: TextDecorationStyle.dashed,
     ),
   );
 }

 _button() {
    return RaisedButton(
      color:Colors.green,
     onPressed: _onClick,
      //onPressed: null,
      //onPressed: () {
      // print("CLICOU NO BOTÃO!");
      //},

      child:Text(
        "ok!",
        style:TextStyle(
          color:Colors.white,
         fontSize: 20,
        ),
      ),
    );


 }
_onClick(){
    print("CLICOU NO BOTÃO!");

}
}
