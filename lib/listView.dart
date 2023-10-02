import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: ListView(
          children: <Widget>[
            Container(
              height: 50,
              color: Colors.amber[700],
              child: const Center(child: Text('Abhimanyu')),
            ),
            Container(
              height: 50,
              color: Colors.amber[600],
              child: const Center(child: Text('Yogesh')),
            ),
            Container(
              height: 50,
              color: Colors.amber[500],
              child: const Center(child: Text('Priyanshu')),
            ),
            Container(
              height: 50,
              color: Colors.amber[400],
              child: const Center(child: Text('Priyesh')),
            ),
            Container(
              height: 50,
              color: Colors.amber[300],
              child: const Center(child: Text('Krishna')),
            ),
            Container(
              height: 50,
              color: Colors.amber[200],
              child: const Center(child: Text('Ritik')),
            ),
            Container(
              height: 50,
              color: Colors.amber[100],
              child: const Center(child: Text('Raj')),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: FloatingActionButton.extended(
                label: Text('After Page'),
                  backgroundColor: Colors.blue,
                  icon: const Icon(
                    Icons.navigate_next,
                    size: 24,
                  ),
                  onPressed:(){
                Navigator.pushNamed(context, 'homePage');
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: FloatingActionButton.extended(
                  label: const Text('Before Page'),
                  backgroundColor: Colors.blue,
                  icon: const Icon(
                    Icons.navigate_before,
                    size: 24,
                  ),
                  onPressed:(){
                    Navigator.pushNamed(context, 'alert');
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
