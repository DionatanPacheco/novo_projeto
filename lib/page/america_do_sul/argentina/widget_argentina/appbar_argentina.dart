import 'package:flutter/material.dart';

AppBar getAppBarArgentina() {
  return AppBar(
    backgroundColor: Colors.grey,
    title: const Text(
      'Argentina',
      style: TextStyle(
          fontSize: 30,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: Colors.black87),
    ),
    actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
  );
}
