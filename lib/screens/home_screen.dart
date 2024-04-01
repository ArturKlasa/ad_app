import 'package:addapp/screens/main_drawer.dart';
import 'package:addapp/utils/map_display.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        // backgroundColor: Theme.of(context).primaryColor,
      ),
      // floatingActionButton: FloatingActionButton(onPressed: () {}),
      drawer: const MainDrawer(),
      body: const MapDisplay(),
    );
  }
}
