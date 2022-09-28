import 'package:flutter/material.dart';
import 'package:novo_projeto/page/america_do_sul/chile/widget_chile/drawer_chile_cid.dart';
import 'package:novo_projeto/page/america_do_sul/chile/widget_chile/drawer_chile_pers.dart';

class BodyChile extends StatefulWidget {
  const BodyChile({Key? key}) : super(key: key);

  @override
  State<BodyChile> createState() => _BodyChileState();
}

class _BodyChileState extends State<BodyChile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerChileCid(),
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const Text(
            'Chile',
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
                          builder: (context) => const DrawerChilePers()));
                },
                icon: const Icon(
                  Icons.book,
                  color: Colors.black87,
                ))
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(children: [
            Image.asset(
              'assets/imagens/mapas/americadosul.jpeg',
              fit: BoxFit.cover,
              height: 800,
            ),
          ]),
        ));
  }
}
