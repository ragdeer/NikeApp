import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class MyBottonNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottonNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Padding(
        padding: const EdgeInsets.only(bottom: 12.0),
        child: GNav(
          color: Colors.grey[400],
          activeColor: Colors.grey.shade700,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.grey.shade100,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 16,
          onTabChange: (value) => onTabChange! (value),   
          tabs: const [
            GButton(
              icon:Icons.home,
              text: 'Shop',
          ),
            GButton(
              icon:Icons.shopping_bag_rounded,
              text:'cart',
            ),
          ],
        ),
      ),
    );
  }
}