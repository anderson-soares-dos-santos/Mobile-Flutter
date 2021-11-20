import 'package:flutter/material.dart';

class Pessoal extends StatelessWidget {
  const Pessoal({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: _appBar(),
      body: Center(
        child: Column(
          children: [
            Text('PESSOAL'),
            Text('QUEM SOU EU'),
          ],
        ),
      ),
    );
  }
}