import 'package:flutter/material.dart';

import '../../utils/app_constants/image_constants.dart';
import '../favourite_screen.dart';
import '../home_screen.dart';
import '../search_bar_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  bool homeTab = true;
  bool searchTab = false;
  bool fevoriteTab = false;

  static const List<Widget> _widgetsOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    FavouriteScreen()
  ];

  void _onItemTapped(int index) {
    if(index==1){
      homeTab = false;
      searchTab = true;
      fevoriteTab = false;
    }else if(index==2){
      homeTab = false;
      searchTab = false;
      fevoriteTab = true;
    }else{
      homeTab = true;
      searchTab = false;
      fevoriteTab = false;
    }
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: _widgetsOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:  [
          BottomNavigationBarItem(icon: Column(
            children: [
              Visibility(child: Image.asset(ellipse,), visible: homeTab,),
              Icon(Icons.home),
            ],
          ), label: ''),
          BottomNavigationBarItem(icon: Column(
            children: [
              Visibility(child: Image.asset(ellipse,), visible: searchTab,),

              Icon(Icons.search),
            ],
          ), label: ''),
          // BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
          BottomNavigationBarItem(icon: Column(
            children: [
              Visibility(child: Image.asset(ellipse,), visible: fevoriteTab,),

              Icon(Icons.favorite),
            ],
          ), label: ''),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
