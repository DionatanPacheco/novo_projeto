import 'package:flutter/material.dart';
import 'package:novo_projeto/page/america_do_sul/guiana/widget_guiana/drawer_guiana_pers.dart';

class BodyGuiana extends StatefulWidget {
  const BodyGuiana({Key? key}) : super(key: key);

  @override
  State<BodyGuiana> createState() => _BodyGuianaState();
}

class _BodyGuianaState extends State<BodyGuiana> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text(
          'Guiana',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black87),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DrawerGuianaPers()));
            },
            icon: const Icon(Icons.add_circle),
            color: Colors.black87,
          ),
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
