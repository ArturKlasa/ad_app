import 'package:addapp/resources/ad_data.dart';
import 'package:addapp/utils/ad_display.dart';
import 'package:flutter/material.dart';

class MyAdsScreen extends StatefulWidget {
  const MyAdsScreen({super.key});

  @override
  State<MyAdsScreen> createState() => _MyAdsScreenState();
}

class _MyAdsScreenState extends State<MyAdsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Theme.of(context).colorScheme.background),
                ),
                child: Text(
                  'Live',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Theme.of(context).colorScheme.background),
                ),
                child: Text(
                  'History',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
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
