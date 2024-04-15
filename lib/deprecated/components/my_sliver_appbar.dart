import 'package:flutter/material.dart';

class MySliverAppBar extends StatefulWidget {
  const MySliverAppBar({super.key});

  @override
  State<MySliverAppBar> createState() => _SliverAppBarExampleState();
}

class _SliverAppBarExampleState extends State<MySliverAppBar>
    with SingleTickerProviderStateMixin {
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;
  late TabController _tabController;

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
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 160.0,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('My ads'),
              background: Padding(
                padding: EdgeInsets.only(bottom: 50),
              ),
            ),
          ),
          // MyTabBar(tabController: _tabController),
        ],
      ),
    );
  }
}
