import 'package:flutter/material.dart';
import 'package:novo_projeto/page/america_do_sul/argentina/widget_argentina/appbar_argentina.dart';
import 'package:novo_projeto/page/america_do_sul/argentina/widget_argentina/body_argentina.dart';
import 'package:novo_projeto/page/america_do_sul/argentina/widget_argentina/drawer_argentina.dart';

class HomeArgentina extends StatefulWidget {
  const HomeArgentina({Key? key}) : super(key: key);

  @override
  State<HomeArgentina> createState() => _HomeArgentinaState();
}

class _HomeArgentinaState extends State<HomeArgentina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerArgentina(),
      appBar: getAppBarArgentina(),
      body: const BodyArgentina(),
    );
  }
}
