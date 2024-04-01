import 'package:addapp/deprecated/components/drawer_tile.dart';
import 'package:addapp/deprecated/components/my_drawer_header.dart';
import 'package:addapp/constants/routes.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
        child: Column(
      children: <Widget>[
        MyDrawerHeader(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerTile(
                text: "Look for ads",
                icon: Icons.map,
                onTapping: homeScreenRoute),
            DrawerTile(
              text: "Testing",
              icon: Icons.ac_unit,
              onTapping: homeScreenRoute,
            ),
            DrawerTile(
                text: "My ads", icon: Icons.newspaper, onTapping: myAdsRoute),
            DrawerTile(
              text: "History",
              icon: Icons.history,
              onTapping: historyRoute,
            ),
            DrawerTile(
                text: "Settings",
                icon: Icons.settings,
                onTapping: settingsRoute),
          ],
        ),
      ],
    ));
  }
}
