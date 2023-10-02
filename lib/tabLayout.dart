import 'package:flutter/material.dart';
import 'package:practiseapp/alert.dart';
import 'package:practiseapp/calendar.dart';
import 'package:practiseapp/listView.dart';
import 'package:practiseapp/login.dart';

class MyTabLayout extends StatefulWidget {
  const MyTabLayout({super.key});

  @override
  State<MyTabLayout> createState() => _MyTabLayoutState();
}

class _MyTabLayoutState extends State<MyTabLayout> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: const Text('TabLayout',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
              bottom: const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.home), text: "Home"),
                  Tab(icon: Icon(Icons.image), text: "Gallery"),
                  Tab(icon: Icon(Icons.person), text: "Profile"),
                ],
              ),
            ),
            body: const TabBarView(
              children: [
                MyListView(),
                MyAlert(),
                MyLogin()
              ],
            ),
          )
      ),
    );
  }
}
