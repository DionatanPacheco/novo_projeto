import 'package:flutter/material.dart';
import 'package:novo_projeto/page/america_do_sul/widget_america_do_sul/appbar_america_do_sul.dart';
import 'package:novo_projeto/page/america_do_sul/widget_america_do_sul/body_america_do_sul.dart';
import 'package:novo_projeto/page/america_do_sul/widget_america_do_sul/drawer_america_do_sul.dart';

class HomeAmericaDoSul extends StatefulWidget {
  const HomeAmericaDoSul({Key? key}) : super(key: key);

  @override
  State<HomeAmericaDoSul> createState() => _HomeAmericaDoSulState();
}

class _HomeAmericaDoSulState extends State<HomeAmericaDoSul> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DraweeAmericaDoSul(),
      appBar: AppBarAmericadoSul(),
      body: const BodyAmericaDoSul(),
      //floatingActionButton: ,
    );
  }
}
