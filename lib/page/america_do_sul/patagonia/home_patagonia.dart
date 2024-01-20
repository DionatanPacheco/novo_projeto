import 'package:flutter/material.dart';
import 'package:novo_mundo/page/america_do_sul/patagonia/widget_patagonia/body_patagonia.dart';
import 'package:novo_mundo/page/america_do_sul/patagonia/widget_patagonia/drawer_pata_perso.dart';
import 'package:novo_mundo/page/america_do_sul/patagonia/widget_patagonia/drawer_patagonia.dart';

class HomePatagonia extends StatefulWidget {
  const HomePatagonia({Key? key}) : super(key: key);

  @override
  State<HomePatagonia> createState() => _HomePatagoniaState();
}

class _HomePatagoniaState extends State<HomePatagonia> {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text(
          'Patagonia',
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
                        builder: (context) => const DrawerPatagoniaPers()));
              },
              icon: const Icon(Icons.add))
        ],
      ),
      drawer: const DrawerPatagonia(),
      //appBar:getAppBarPatagonia(context),
      body: const BodyPatagonia(),
    );
  }
}
