import 'package:flutter/material.dart';

import '../../home/home_page.dart';

class StartBody extends StatefulWidget {
  const StartBody({Key? key}) : super(key: key);

  @override
  State<StartBody> createState() => _StartBodyState();
}

class _StartBodyState extends State<StartBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          child: Stack(
            children: [
              Image.asset('assets/imagens/fotoentrada.jpg',
                  fit: BoxFit.cover, height: 800),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FloatingActionButton.extended(
              label: const Text(
                'Entrar',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage())),
            ),
          ],
        ),
      ),
    );
  }
}
