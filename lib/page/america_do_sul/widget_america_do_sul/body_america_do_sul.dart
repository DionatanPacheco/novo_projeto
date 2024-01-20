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
      body: InteractiveViewer(
        minScale: 1,
        maxScale: 6,
        child: SizedBox(
          child: Stack(
            children: [
              Image.asset(
                'assets/imagens/mapas/americadosul.jpeg',
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 1,
                width: MediaQuery.of(context).size.width * 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
