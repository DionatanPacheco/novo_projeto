import 'package:flutter/material.dart';

class BodyColombia extends StatefulWidget {
  const BodyColombia({Key? key}) : super(key: key);

  @override
  State<BodyColombia> createState() => _BodyColombiaState();
}

class _BodyColombiaState extends State<BodyColombia> {
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
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
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
