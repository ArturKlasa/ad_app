import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final String text;
  final IconData? icon;
  final String onTapping;
  const DrawerTile(
      {super.key,
      required this.text,
      required this.onTapping,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //INFO: leading: Icon(Icons.person),  ---- if you want to have a leading icon add this
      title: Text(text),
      leading: Icon(icon),
      onTap: () => Navigator.of(context).pushNamed(onTapping),
    );
  }
}
