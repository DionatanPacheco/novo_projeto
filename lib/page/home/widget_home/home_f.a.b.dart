import 'package:flutter/material.dart';
import 'package:novo_projeto/page/home/widget_home/home_modal.dart';

FloatingActionButton getFAB(BuildContext context, Function fncRefresh) {
  return FloatingActionButton(
      backgroundColor: Colors.black87,
      child: const Icon(Icons.book_online_outlined),
      onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) => HomeModal(
                  fncRefresh,
                ));
      });
}
