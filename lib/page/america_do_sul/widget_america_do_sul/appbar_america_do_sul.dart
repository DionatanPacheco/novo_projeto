// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

AppBar AppBarAmericadoSul() {
  return AppBar(
    backgroundColor: Colors.grey,
    title: const Text(
      'America do Sul',
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black87),
    ),
    centerTitle: true,
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.add_circle),
        color: Colors.black87,
      ),
    ],
  );
}
