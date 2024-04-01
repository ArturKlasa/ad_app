import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Future<Object?> onTap;
  const DrawerTile(
      {super.key, required this.text, this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    onTap() => Navigator.of(context).pushNamed(onTap());
    return ListTile(
      //INFO: leading: Icon(Icons.person),  ---- if you want to have a leading icon add this
      title: Text(text),
      leading: Icon(icon),
      onTap: onTap,
    );
  }
}
