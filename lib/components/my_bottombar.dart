import 'package:flutter/material.dart';

class MyBoottomBar extends StatelessWidget {
  final int index;
  final Function(int?) onTap;
  MyBoottomBar({super.key, required this.index, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: onTap,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey[300],
      backgroundColor: Colors.transparent,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Home'),
      ],
    );
  }
}
