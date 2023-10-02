import 'package:flutter/material.dart';
import 'package:practiseapp/calendar.dart';
import 'package:practiseapp/carousel.dart';
import 'package:practiseapp/tabLayout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePages(),
    );
  }
}

class MyHomePages extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePages> {
  int _currentIndex = 0; // Index of the currently selected tab
  final List<Widget> _pages = [
    // Define your pages/screens here
    // For example:
    MyCalendarPage(),
    MyImageSlider(),
    MyTabLayout(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Example'),
      ),
      body: _pages[_currentIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          // Update the selected index when a tab is pressed
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          // Define your bottom navigation items here
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Carousel',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'TabLayout',
          ),
        ],
      ),
    );
  }
}

