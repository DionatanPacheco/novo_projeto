import 'package:flutter/material.dart';
import 'package:novo_projeto/page/america_do_sul/argentina/widget_argentina/drawer_argetinapers.dart';

class BodyArgentina extends StatefulWidget {
  const BodyArgentina({Key? key}) : super(key: key);

  @override
  State<BodyArgentina> createState() => _BodyArgentinaState();
}

class _BodyArgentinaState extends State<BodyArgentina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text(
          'Argentina',
          style: TextStyle(
              fontSize: 30,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.black87),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DrawerArgentinaPers()));
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: InteractiveViewer(
        minScale: 1,
        maxScale: 6,
        child: Stack(children: [
          Image.asset(
            'assets/imagens/mapas/americadosul.jpeg',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
          ),
        ]),
      ),
    );
  }
}
