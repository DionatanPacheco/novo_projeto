import 'package:flutter/material.dart';
import 'package:novo_projeto/page/america_do_sul/peru/widget_peru/drawer_peru.dart';

import 'drawer_perupers.dart';

class BodyPeru extends StatefulWidget {
  const BodyPeru({Key? key}) : super(key: key);

  @override
  State<BodyPeru> createState() => _BodyPeruState();
}

class _BodyPeruState extends State<BodyPeru> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerPeru(),
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text(
          'Peru',
          style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 30),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DrawerPeruPers()));
              },
              icon: const Icon(
                Icons.book,
                color: Colors.black87,
              ))
        ],
      ),
      body: InteractiveViewer(
        minScale: 1,
        maxScale: 6,
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
    );
  }
}
