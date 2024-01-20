import 'package:flutter/material.dart';
import 'package:novo_projeto/page/america_do_sul/uruguai/widget_uruguai/drawer_uruguai.dart';
import 'package:novo_projeto/page/america_do_sul/uruguai/widget_uruguai/drawer_uruguarpers.dart';

class BodyUruguai extends StatefulWidget {
  const BodyUruguai({Key? key}) : super(key: key);

  @override
  State<BodyUruguai> createState() => _BodyUruguaiState();
}

class _BodyUruguaiState extends State<BodyUruguai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerUruguai(),
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text(
          'Uruguai',
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
                        builder: (context) => const DrawerUruguaiPers()));
              },
              icon: const Icon(
                Icons.book,
                color: Colors.black87,
              ))
        ],
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Image.asset(
                'assets/imagens/mapas/americadosul.jpeg',
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 1,
                width: MediaQuery.of(context).size.width * 1,
              ),
            ],
          )),
    );
  }
}
