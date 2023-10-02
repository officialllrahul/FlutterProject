import 'package:flutter/material.dart';
import 'package:practiseapp/alert.dart';
import 'package:practiseapp/aspectRatio.dart';
import 'package:practiseapp/bottomNav.dart';
import 'package:practiseapp/calendar.dart';
import 'package:practiseapp/carousel.dart';
import 'package:practiseapp/home.dart';
import 'package:practiseapp/listView.dart';
import 'package:practiseapp/login.dart';
import 'package:practiseapp/signUp.dart';
import 'package:practiseapp/tabLayout.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const AspectRatioExample(),
    routes: {
      'login':(context) =>const MyLogin(),
      'signup':(context) =>const MySignUp(),
      'alert':(context) => MyAlert(),
      'listView':(context) => MyListView(),
      'homePage':(context) => MyHome(),
      'calendar':(context) => MyCalendarPage(),
      'ImageSlider':(context) => MyImageSlider(),
      'bottom':(context) => MyHomePages(),
      'tabBar':(context) => MyTabLayout(),
      'aspectRatio':(context) => AspectRatioExample(),
  },
  ));
}

