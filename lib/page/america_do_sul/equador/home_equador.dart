import 'package:flutter/material.dart';
import 'package:novo_projeto/page/america_do_sul/equador/widget_equador/body_equador.dart';
import 'package:novo_projeto/page/america_do_sul/equador/widget_equador/drawer_equador.dart';
import 'package:novo_projeto/page/america_do_sul/equador/widget_equador/drawer_equadorpers.dart';

class HomeEquador extends StatefulWidget {
  const HomeEquador({Key? key}) : super(key: key);

  @override
  State<HomeEquador> createState() => _HomeEquadorState();
}

class _HomeEquadorState extends State<HomeEquador> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text(
          'Equador',
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
                        builder: (context) => const DrawerEquadorPers()));
              },
              icon: const Icon(
                Icons.book,
                color: Colors.black87,
              ))
        ],
      ),
      drawer: const DrawerEquardor(),
      body: const BodyEquador(),
    );
  }
}
