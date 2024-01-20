import 'package:flutter/material.dart';
import 'package:novo_mundo/page/america_do_sul/colombia/widgets_colombia/body_colombia.dart';

class HomeColombia extends StatefulWidget {
  const HomeColombia({Key? key}) : super(key: key);

  @override
  State<HomeColombia> createState() => _HomeColombiaState();
}

class _HomeColombiaState extends State<HomeColombia> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyColombia(),
    );
  }
}
