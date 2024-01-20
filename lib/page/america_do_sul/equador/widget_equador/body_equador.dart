import 'package:flutter/material.dart';

class BodyEquador extends StatefulWidget {
  const BodyEquador({Key? key}) : super(key: key);

  @override
  State<BodyEquador> createState() => _BodyEquadorState();
}

class _BodyEquadorState extends State<BodyEquador> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InteractiveViewer(
        minScale: 1,
        maxScale: 6,
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
    );
  }
}
