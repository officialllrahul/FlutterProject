import 'package:flutter/material.dart';
import 'package:practiseapp/alert.dart';
import 'package:practiseapp/aspectRatio.dart';
import 'package:practiseapp/bottomNav.dart';
import 'package:practiseapp/calendar.dart';
import 'package:practiseapp/carousel.dart';
import 'package:practiseapp/circleImage.dart';
import 'package:practiseapp/customAlert.dart';
import 'package:practiseapp/home.dart';
import 'package:practiseapp/listView.dart';
import 'package:practiseapp/login.dart';
import 'package:practiseapp/mediaQuery.dart';
import 'package:practiseapp/signUp.dart';
import 'package:practiseapp/tabLayout.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const MySignUp(),
    routes: {
      'login':(context) =>const MyLogin(),
      'signup':(context) =>const MySignUp(),
      'alert':(context) => const MyAlert(),
      'listView':(context) => const MyListView(),
      'homePage':(context) => const MyHome(),
      'calendar':(context) => MyCalendarPage(),
      'ImageSlider':(context) => MyImageSlider(),
      'bottom':(context) => MyHomePages(),
      'tabBar':(context) => const MyTabLayout(),
      'aspectRatio':(context) => const AspectRatioExample(),
      'mediaQueries':(context) =>const MyMediaQuery(),
      'circleAvatar':(context) =>const MyCircleAvatar(),
      'customAlert':(context) =>const MyCustomAlert(),
  },
  ));
}

