import 'package:flutter/material.dart';

// import 'counselling.dart';

class homePage extends StatefulWidget {
  // const hompage({ super.key });

  @override
  State<homePage> createState() => _HomePage();

}

class _HomePage extends State<homePage> {

  // List pages = [
  //    _HomePage(),
  //    // Counselling(),
  //   // Profile()
  // ];

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
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
      backgroundColor: Color(0xFFEEEEEE),
      body: Center(
        child: Container(
        child: Column(
          children: [
            _HTxt(),
          ],
        ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'School',
          ),
        ],

        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _HTxt(){
    return Container(
        padding: EdgeInsets.only(top: 80 ,right: 250, left: 0),
        child: const Text(
          'Hi Welcome',
          style: TextStyle(
              fontSize: 19, fontWeight: FontWeight.w700, color: Colors.black),
        ),
      );
  }
}
