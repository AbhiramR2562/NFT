import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final List tabOptions;
  MyTabBar({super.key, required this.tabOptions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Tab Bar
        TabBar(
          tabs: [
            Text(tabOptions[0][0]),
            Text(tabOptions[1][0]),
            Text(tabOptions[2][0]),
          ],
        ),

        // Tab view
        Expanded(
          child: TabBarView(children: [
            tabOptions[0][1],
            tabOptions[1][1],
            tabOptions[2][1],
          ]),
        ),
      ],
    );
  }
}
