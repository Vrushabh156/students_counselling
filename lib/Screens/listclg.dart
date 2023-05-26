import 'package:flutter/material.dart';
import 'package:students_counselling/Screens/profile.dart';

import 'HomePage1.dart';
import 'counselling.dart';

// import 'counselling.dart';

class ListPage extends StatefulWidget {
  // const hompage({ super.key });

  @override
  State<ListPage> createState() => _ListPage();
}

class _ListPage extends State<ListPage> {
  List pages = [HomePage1(), Counselling(), ProfilePage1()];

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Counselling',
      style: optionStyle,
    ),
    Text(
      'Index 2: Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("Medical"),
      ),
      backgroundColor: Color(0xFFEEEEEE),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        // selectedI
        // unselectedItemColor: Colors.black54,
        // unselectedFontSize: 0,
        // selectedFontSize: 0,
        // backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 0,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.laptop),
            label: 'Counselling',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
