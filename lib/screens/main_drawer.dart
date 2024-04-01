import 'package:addapp/components/drawer_tile.dart';
import 'package:addapp/constants/routes.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: <Widget>[
        DrawerHeader(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
          ),
          child: SizedBox(
            width: double.infinity,
            // padding: const EdgeInsets.all(5),
            // margin: EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                    Container(
                        padding: const EdgeInsets.all(18.0),
                        child: const Icon(
                          FluentSystemIcons.ic_fluent_person_add_regular,

                          ///TODO: change to the user image, using image: BoxDecoroation(image: pathToTheImage), fit: BoxFit.fill,
                        )),
                  ],
                ),
                const Gap(15),
                const Text(
                  'Name Lastname', //TODO: make it dynamic to display user name/lastname
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
        const Column(
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
