// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:novo_projeto/page/home/home_page.dart';
import 'package:novo_projeto/page/start_page/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Novo Mundo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
