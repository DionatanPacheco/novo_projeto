import 'package:flutter/material.dart';
import 'package:novo_projeto/page/america_do_sul/chile/widget_chile/body_chile.dart';

class HomeChile extends StatefulWidget {
  const HomeChile({Key? key}) : super(key: key);

  @override
  State<HomeChile> createState() => _HomeChileState();
}

class _HomeChileState extends State<HomeChile> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyChile(),
    );
  }
}
