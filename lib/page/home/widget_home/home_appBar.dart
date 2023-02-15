// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../home_historia_mundo/home_drawer_historia.dart';

AppBar getHomeAppBar(context) {
  return AppBar(
    backgroundColor: const Color.fromARGB(255, 8, 8, 8),
    title: const Text(
      'Novo mundo',
      style: TextStyle(
          color: Color.fromARGB(255, 251, 249, 249),
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic),
    ),
    centerTitle: true,
    actions: [
      IconButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const HomeDrawerHistoria()));
        },
        icon: const Icon(Icons.book_online),
      )
    ],
  );
}
