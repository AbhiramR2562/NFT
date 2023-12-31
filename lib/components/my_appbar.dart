import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  VoidCallback onTap;
  MyAppBar({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // title
          Expanded(
            child: Text(
              title,
              style:
                  //TextStyle(fontSize: 20)
                  GoogleFonts.bebasNeue(fontSize: 47, color: Colors.white),
            ),
          ),

          // Search button
          GestureDetector(
            onTap: onTap,
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  // for border color
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.shade200),
              child: Icon(
                Icons.search,
                size: 36,
              ),
            ),
          )
        ],
      ),
    );
  }
}
