import 'package:flutter/material.dart';
import 'package:novo_mundo/page/america_do_sul/guiana/widget_guiana/body_guiana.dart';
import 'package:novo_mundo/page/america_do_sul/guiana/widget_guiana/drawer_guiana.dart';

class HomeGuiana extends StatefulWidget {
  const HomeGuiana({Key? key}) : super(key: key);

  @override
  State<HomeGuiana> createState() => _HomeGuianaState();
}

class _HomeGuianaState extends State<HomeGuiana> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: DrawerGuiana(),
      body: BodyGuiana(),
    );
  }
}
