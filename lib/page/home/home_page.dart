import 'package:flutter/material.dart';
import 'package:novo_mundo/page/home/pesquisa_page.dart';
import 'package:novo_mundo/page/home/widget_home/home_body.dart';
import 'package:novo_mundo/page/home/widget_home/home_drawer.dart';
import 'widget_home/home_appBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeDrawer(),
      appBar: getHomeAppBar(context),
      body: const HomeBody(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              FloatingActionButton.extended(
                  backgroundColor: Colors.transparent,
                  icon: const Icon(Icons.search_rounded),
                  label: const Text(
                    'Pesquisar',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(221, 252, 250, 250)),
                  ),
                  onPressed: () {
                    showSearch(
                      context: context,
                      delegate: PesquisaPage(),
                    );
                  }),
            ]),
      ),
    );
  }
}
