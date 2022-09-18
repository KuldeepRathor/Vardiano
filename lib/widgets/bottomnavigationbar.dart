import 'package:flutter/material.dart';
import 'package:vardiano/screens/profile/myprofile_section.dart';
import '../screens/profile_page.dart';
import '../widgets/product_grid.dart';
import '../widgets/scrollbar.dart';

import '../screens/home.dart';

class navigationbar extends StatefulWidget {
  const navigationbar({Key? key}) : super(key: key);

  @override
  State<navigationbar> createState() => _navigationbarState();
}

class _navigationbarState extends State<navigationbar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    homepage(),
    Text(
      'SAVED',
      style: optionStyle,
    ),
    Text(
      'REMINDERS',
      style: optionStyle,
    ),
    MyProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,color: Colors.black,),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outline,color: Colors.black,),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_outlined,color: Colors.black,),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined,color: Colors.black,),
            label: 'home',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}

