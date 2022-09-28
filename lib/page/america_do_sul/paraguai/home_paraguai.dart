import 'package:flutter/material.dart';
import 'package:novo_projeto/page/america_do_sul/paraguai/widiget_paraguai/body_paraguai.dart';

class HomeParaguai extends StatefulWidget {
  const HomeParaguai({Key? key}) : super(key: key);

  @override
  State<HomeParaguai> createState() => _HomeParaguaiState();
}

class _HomeParaguaiState extends State<HomeParaguai> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyParaguai(),
    );
  }
}
