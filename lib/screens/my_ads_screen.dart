import 'package:addapp/resources/ad_data.dart';
import 'package:addapp/utils/ad_display.dart';
import 'package:flutter/material.dart';

class MyAdsScreen extends StatelessWidget {
  const MyAdsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text('My ads'),
        //   backgroundColor: Theme.of(context).primaryColor,
        // ),
        // drawer: const MainDrawer(),
        body: Scaffold(
      backgroundColor: Theme.of(context).primaryColor.withOpacity(0.2),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.blue.shade200)),
                child: const Text('Live'),
                onPressed: () {},
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.blue.shade200)),
                child: const Text('History'),
                onPressed: () {},
              ),
            ],
          ),
          for (int i = 0; i < adInfo.length; i++) (AdDisplay(adInfo: adInfo[i]))
        ],
        // const Gap(2),
        // AdDisplay(adInfo: adInfo[0]),
        // //TODO: add logic to automatically display all adds where the user_id corresponds to the current user
        // const Gap(2),
        // AdDisplay(adInfo: adInfo[1]),
        // ],
      ),
    ));
  }
}
