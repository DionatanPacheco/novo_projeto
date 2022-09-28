import 'package:flutter/material.dart';

class BodyArgentina extends StatefulWidget {
  const BodyArgentina({Key? key}) : super(key: key);

  @override
  State<BodyArgentina> createState() => _BodyArgentinaState();
}

class _BodyArgentinaState extends State<BodyArgentina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(children: [
          Image.asset(
            'assets/imagens/mapas/americadosul.jpeg',
            fit: BoxFit.cover,
            height: 800,
          ),
        ]),
      ),
    );
  }
}
