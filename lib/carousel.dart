import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class MyImageSlider extends StatelessWidget {
  final List<String> imageUrls = [
    "https://images.unsplash.com/photo-1557700836-25f2464e845d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80",
    "https://images.unsplash.com/photo-1669462277329-f32f928a4a79?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
    "https://images.unsplash.com/photo-1542840410-3092f99611a3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Slider Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0,40,0,0,),
        child: CarouselSlider(
          options: CarouselOptions(
            height: 500.0, // Adjust the height as needed
            autoPlay: true,
            enlargeCenterPage: true,
          ),
          items: imageUrls.map((imageUrl) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}

