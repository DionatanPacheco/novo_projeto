import 'package:flutter/material.dart';
import 'package:novo_projeto/page/america_do_sul/paraguai/widiget_paraguai/drawer_paraguai.dart';

import 'drawer_paraguaipers.dart';

class BodyParaguai extends StatefulWidget {
  const BodyParaguai({Key? key}) : super(key: key);

  @override
  State<BodyParaguai> createState() => _BodyParaguaiState();
}

class _BodyParaguaiState extends State<BodyParaguai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerParaguai(),
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text(
          'Paraguai',
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
                        builder: (context) => const DrawerParaguaiPers()));
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
              height: MediaQuery.of(context).size.height * 1,
              width: MediaQuery.of(context).size.width * 1,
            ),
          ],
        ),
      ),
    );
  }
}
