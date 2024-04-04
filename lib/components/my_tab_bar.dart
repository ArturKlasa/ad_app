// import 'package:fluentui_icons/fluentui_icons.dart';
// import 'package:flutter/material.dart';

// class TabBarExample extends StatelessWidget {
//   const TabBarExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       initialIndex: 1,
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('TabBar Sample'),
//           bottom: const TabBar(
//             tabs: <Widget>[
//               Tab(
//                 text: "Current",
//                 icon: Icon(FluentSystemIcons.ic_fluent_live_regular),
//               ),
//               Tab(
//                 text: "History",
//                 icon: Icon(FluentSystemIcons.ic_fluent_history_regular),
//               ),
//             ],
//           ),
//         ),
//         body: const TabBarView(
//           children: <Widget>[
//             Center(
//               child: Text("It's cloudy here"),
//             ),
//             Center(
//               child: Text("It's rainy here"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const TabBarExample(),
    );
  }
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Sample'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                text: "Current",
                icon: Icon(FluentSystemIcons.ic_fluent_live_regular),
              ),
              Tab(
                text: "History",
                icon: Icon(FluentSystemIcons.ic_fluent_history_regular),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text("It's cloudy here"),
            ),
            Center(
              child: Text("It's rainy here"),
            ),
          ],
        ),
      ),
    );
  }
}
