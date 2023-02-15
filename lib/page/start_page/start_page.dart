// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';

import 'package:novo_projeto/page/start_page/widget_start/start_body.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: 140,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'Novo mundo',
            style: TextStyle(
                color: Color.fromARGB(255, 250, 249, 249),
                fontSize: 50,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: const StartBody(),
      );
}
