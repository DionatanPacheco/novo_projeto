import 'package:flutter/material.dart';
import 'package:novo_projeto/page/home/widget_home/home_body.dart';
import 'package:novo_projeto/page/home/widget_home/home_drawer.dart';
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
    );
  }
}
