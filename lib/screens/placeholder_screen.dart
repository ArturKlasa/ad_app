import 'package:flutter/material.dart';

import '../resources/ad_data.dart';
import '../utils/ad_display.dart';

class NewMyAdsScreen extends StatefulWidget {
  const NewMyAdsScreen({super.key});

  @override
  State<NewMyAdsScreen> createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<NewMyAdsScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text('My ads'),
        bottom: TabBar(
          labelColor: Colors.amber,
          controller: _tabController,
          tabs: <Widget>[
            const Tab(
              text: "Current",
            ),
            const Tab(
              text: "History",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          ListView(
            children: [
              // for (int i = 0; i < adInfo.length; i++)
              //   (AdDisplay(adInfo: adInfo[i])),
              for (int i = 0; i < adInfo.length; i++)
                if (adInfo[i]['is_current'] == true)
                  (AdDisplay(adInfo: adInfo[i]))
            ],
          ),
          ListView(
            children: [
              // for (int i = 0; i < adInfo.length; i++)
              //   (AdDisplay(adInfo: adInfo[i])),
              for (int i = 0; i < adInfo.length; i++)
                if (adInfo[i]['is_current'] == false)
                  (AdDisplay(adInfo: adInfo[i]))
            ],
          ),
        ],
      ),
    );
  }
}
