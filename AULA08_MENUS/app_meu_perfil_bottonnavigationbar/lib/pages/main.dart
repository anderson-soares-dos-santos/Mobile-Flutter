import 'package:flutter/material.dart';
import 'package:app_meu_perfil_bottonnavigationbar/pages/Home.dart';
void main() {

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      //home:Home(),
      home: widgetHome(),


    );

  }
}
