import 'package:flutter/material.dart';

import 'drawer_bolivia.dart';
import 'drawer_boliviapers.dart';

class BodyBolivia extends StatefulWidget {
  const BodyBolivia({Key? key}) : super(key: key);

  @override
  State<BodyBolivia> createState() => _BodyBoliviaState();
}

class _BodyBoliviaState extends State<BodyBolivia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerBolivia(),
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text(
          'Bolivia',
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
                        builder: (context) => const DrawerBoliviaPers()));
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
