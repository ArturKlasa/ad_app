import 'package:flutter/material.dart';

import 'main_drawer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
        'My settings page',
        style: TextStyle(color: Colors.black),
      )),
    );
  }
}
