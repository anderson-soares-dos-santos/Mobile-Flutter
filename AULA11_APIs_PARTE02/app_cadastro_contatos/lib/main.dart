import 'package:flutter/material.dart';
import 'package:app_cadastro_contatos/Home.dart';
//import 'package:app_api3/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
