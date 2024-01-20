import 'package:flutter/material.dart';
import 'package:novo_mundo/page/america_do_sul/bolivia/widget_bolivia/body_bolivia.dart';
import 'package:novo_mundo/page/america_do_sul/bolivia/widget_bolivia/drawer_bolivia.dart';

class HomeBolivia extends StatefulWidget {
  const HomeBolivia({Key? key}) : super(key: key);

  @override
  State<HomeBolivia> createState() => _HomeBoliviaState();
}

class _HomeBoliviaState extends State<HomeBolivia> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(drawer: DrawerBolivia(), body: BodyBolivia());
  }
}
