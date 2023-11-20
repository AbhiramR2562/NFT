import 'package:flutter/material.dart';
import 'package:nft/components/my_bottombar.dart';
import 'package:nft/components/my_tabbar.dart';
import 'package:nft/tabs/recent_tab.dart';
import 'package:nft/tabs/top_tab.dart';
import 'package:nft/tabs/trending_tab.dart';
import 'package:nft/theme/glass_box.dart';

import '../components/my_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Search button tapped
  void _searchButoonTapped() {}

  // our 3 tabs option
  List tabOptions = const [
    ["Recent", RecentTab()],
    ["Trending", TrendingTab()],
    ["Top", TopTab()],
  ];

  // when we tap the bottom bar
  int _currentBottomIndex = 0;
  void _handleBottomIndexChanged(int? index) {
    setState(() {
      _currentBottomIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOptions.length,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 20, 17, 82),
        extendBody: true,
        bottomNavigationBar: GlassBox(
          child: MyBoottomBar(
            index: _currentBottomIndex,
            onTap: _handleBottomIndexChanged,
          ),
        ),
        body: ListView(
          children: [
            //app Bar + search button
            MyAppBar(
              title: 'Explore Collections',
              onTap: _searchButoonTapped,
            ),

            // Tab bar
            SizedBox(
              height: 600,
              child: MyTabBar(
                tabOptions: tabOptions,
              ),
            )
          ],
        ),
      ),
    );
  }
}
