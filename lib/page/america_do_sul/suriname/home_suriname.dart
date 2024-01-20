import 'package:flutter/material.dart';
import 'package:novo_mundo/page/america_do_sul/suriname/widget_suriname/body_suriname.dart';
import 'package:novo_mundo/page/america_do_sul/suriname/widget_suriname/drawe_suriname_pers.dart';
import 'package:novo_mundo/page/america_do_sul/suriname/widget_suriname/drawer_suriname.dart';

class HomeSuriname extends StatefulWidget {
  const HomeSuriname({Key? key}) : super(key: key);

  @override
  State<HomeSuriname> createState() => _HomeSurinameState();
}

class _HomeSurinameState extends State<HomeSuriname> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text(
          'Suriname',
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
                      builder: (context) => const DrawerSurinamePers()));
            },
            icon: const Icon(Icons.add_circle),
            color: Colors.black87,
          ),
        ],
      ),
      drawer: const DrawerSuriname(),
      body: const BodySuriname(),
    );
  }
}
