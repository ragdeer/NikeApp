import 'package:flutter/material.dart';
import '../components/botton_nav_bar.dart';
import 'cart_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  void navigateBottonBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List <Widget> _pages = [
    const ShopPage(),



    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottonNavBar(
        onTabChange: (index) => navigateBottonBar(index),
        ),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
            ),
          ),
          body: _pages[_selectedIndex],
        );
  }
}