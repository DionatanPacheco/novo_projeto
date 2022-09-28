import 'package:flutter/material.dart';
import 'package:novo_projeto/page/america_do_sul/peru/widget_peru/body_peru.dart';
import 'package:novo_projeto/page/america_do_sul/peru/widget_peru/drawer_peru.dart';

class HomePeru extends StatefulWidget {
  const HomePeru({Key? key}) : super(key: key);

  @override
  State<HomePeru> createState() => _HomePeruState();
}

class _HomePeruState extends State<HomePeru> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: DrawerPeru(),
      body: BodyPeru(),
    );
  }
}
