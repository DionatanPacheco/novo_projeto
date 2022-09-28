import 'package:flutter/material.dart';
import 'package:novo_projeto/page/america_do_sul/patagonia/widget_patagonia/drawer_patagonia.dart';

class BodyPatagonia extends StatefulWidget {
  const BodyPatagonia({Key? key}) : super(key: key);

  @override
  State<BodyPatagonia> createState() => _BodyPatagoniaState();
}

class _BodyPatagoniaState extends State<BodyPatagonia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerPatagonia(),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Image.asset(
                'assets/imagens/mapas/americadosul.jpeg',
                fit: BoxFit.cover,
                height: 800,
              ),
            ],
          )),
    );
  }
}
