import 'package:flutter/material.dart';

class HomeModal extends StatefulWidget {
  const HomeModal(Function fncRefresh, {Key? key}) : super(key: key);

  @override
  State<HomeModal> createState() => _HomeModalState();
}

class _HomeModalState extends State<HomeModal> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Form(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Historia do Mundo',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Criar"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black87),
              ),
            ),
            const Text(
              'Historia do Mundo',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Criar"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black87),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
