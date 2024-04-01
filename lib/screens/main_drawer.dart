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
        ListTile(
          //INFO: leading: Icon(Icons.person),  ---- if you want to have a leading icon add this
          title: const Text('Look for ads'),
          onTap: () => Navigator.of(context).pushNamed(homeScreenRoute),
        ),
        ListTile(
          //INFO: leading: Icon(Icons.person),  ---- if you want to have a leading icon add this
          title: const Text('My ads'),
          onTap: () => Navigator.of(context).pushNamed(myAdsRoute),
        ),
        ListTile(
          title: const Text('History'),
          onTap: () => Navigator.of(context).pushNamed(historyRoute),
        ),
        ListTile(
          title: const Text('Settings'),
          onTap: () {
            Navigator.of(context).pushNamed(settingsRoute);
          },
        )
      ],
    ));
  }
}
