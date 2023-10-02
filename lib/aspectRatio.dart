import 'package:flutter/material.dart';

class AspectRatioExample extends StatefulWidget {
  const AspectRatioExample({super.key});

  @override
  State<AspectRatioExample> createState() => _AspectRatioExampleState();
}

class _AspectRatioExampleState extends State<AspectRatioExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AspectRatio(aspectRatio: 5/6,
        child: Container(color: Colors.blue,),
      ),);
  }
}
