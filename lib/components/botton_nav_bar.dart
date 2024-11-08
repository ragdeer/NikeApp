import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class MyBottonNavBar extends StatelessWidget {
  const MyBottonNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        tabs: [
        GButton(
        icon:Icons.home,
        text: 'Shop',
        ),
        GButton(
          icon:Icons.shopping_bag_rounded,
          text:'cart'
        )
      ]
      ),
    );
  }
}