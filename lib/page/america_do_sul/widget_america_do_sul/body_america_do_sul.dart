import 'package:flutter/material.dart';

class BodyAmericaDoSul extends StatefulWidget {
  const BodyAmericaDoSul({Key? key}) : super(key: key);

  @override
  State<BodyAmericaDoSul> createState() => _BodyAmericaDoSulState();
}

class _BodyAmericaDoSulState extends State<BodyAmericaDoSul> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          child: Stack(
            children: [
              Image.asset(
                'assets/imagens/mapas/americadosul.jpeg',
                fit: BoxFit.cover,
                height: 800,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
