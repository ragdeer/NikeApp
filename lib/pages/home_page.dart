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
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(builder: (context) => IconButton(
            icon: const Icon(
              Icons.menu, 
              color: Colors.black,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),)
          ),

          //HACIENDO DRAWER
          drawer: Drawer(
            backgroundColor: Colors.grey[900],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                //Columna extra para mantener las opciones principales arriba y mandar el logout hasta abajo del drawer

                Column(
                  children: [
                    //Logo NIKE
                DrawerHeader(
                  child: Center (
                    child: SizedBox(
                      width: 180,
                      height: 180,
                      child: Image.asset(
                        'lib/images/nike.png',
                        color: Colors.white,
                      ),
                    ),
                  )
                ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Divider(
                      color: Colors.grey[900],
                    ),
                  ),

                  //Opciones del drawer

                  //HomePage
                  const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Home',
                      style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),

                  //Informacion
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    title: Text(
                      'About',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                
            //Configuracion

                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Settings',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              
              ],

            ),



            //Logout bottom
            const Padding(
              padding: EdgeInsets.only(left: 25, bottom: 25.0,),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
            )
          ],
        )
      ),
      body: _pages[_selectedIndex],
    );
  }
}