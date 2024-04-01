import 'package:flutter/material.dart';

import 'main_drawer.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('My ads'),
      //   backgroundColor: Theme.of(context).primaryColor,
      // ),
      // drawer: const MainDrawer(),
      body: const Center(
          child: Text(
        'My history page',
        style: TextStyle(color: Colors.black),
      )),
    );
  }
}
