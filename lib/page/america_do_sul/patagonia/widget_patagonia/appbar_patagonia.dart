import 'package:flutter/material.dart';

import 'drawer_pata_perso.dart';

AppBar getAppBarPatagonia(context) {
  return AppBar(
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
  );
}
