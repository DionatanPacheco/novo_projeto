import 'package:flutter/material.dart';
import 'package:novo_projeto/page/america_do_sul/uruguai/widget_uruguai/body_uruguai.dart';
import 'package:novo_projeto/page/america_do_sul/uruguai/widget_uruguai/drawer_uruguai.dart';

class HomeUruguai extends StatefulWidget {
  const HomeUruguai({Key? key}) : super(key: key);

  @override
  State<HomeUruguai> createState() => _HomeUruguaiState();
}

class _HomeUruguaiState extends State<HomeUruguai> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: DrawerUruguai(),
      body: BodyUruguai(),
    );
  }
}
