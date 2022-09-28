// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../home_historia_mundo/home_drawer_historia.dart';

AppBar getHomeAppBar(context) {
  return AppBar(
    backgroundColor: Colors.grey,
    
    title: const Text(
      'Novo mundo',
      style: TextStyle(
        color: Color.fromARGB(255, 0, 0, 0),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
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
          icon: const Icon(Icons.book_online),)
    ],
  );
}
