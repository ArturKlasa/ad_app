import 'package:addapp/constants/routes.dart';
import 'package:addapp/screens/placeholder_screen.dart';
import 'package:addapp/screens/home_screen.dart';
import 'package:addapp/screens/my_ads_screen.dart';
import 'package:addapp/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/bottom_bar.dart';
import 'themes/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ad app',
      // theme: Provider.of<ThemeProvider>(context).themeData,
      home: const BottomBar(),
      theme: Provider.of<ThemeProvider>(context).themeData,
      initialRoute:
          bottomBarRoute, //TODO: change it to logic that shows register/login/homepage???
      routes: {
        bottomBarRoute: (context) => const BottomBar(),
        homeScreenRoute: (context) => const HomeScreen(),
        myAdsRoute: (context) => const MyAdsScreen(),
        historyRoute: (context) => const HistoryScreen(),
        settingsRoute: (context) => const SettingsScreen()
      },
    );
  }
}
