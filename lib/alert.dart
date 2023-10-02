import 'package:flutter/material.dart';

class MyAlert extends StatefulWidget {
  const MyAlert({super.key});

  @override
  State<MyAlert> createState() => _MyAlertState();
}

class _MyAlertState extends State<MyAlert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        actions: [
          PopupMenuButton(
            // add icon, by default "3 dot" icon
            // icon: Icon(Icons.book)
              itemBuilder: (context){
                return [
                  const PopupMenuItem<int>(
                    value: 0,
                    child: Text("My Account"),
                  ),

                  const PopupMenuItem<int>(
                    value: 1,
                    child: Text("Settings"),
                  ),

                  const PopupMenuItem<int>(
                    value: 2,
                    child: Text("Logout"),
                  ),
                ];
              },
              onSelected:(value){
                if(value == 0){
                  print("My account menu is selected");
                }else if(value == 1){
                  print("Settings menu is selected.");
                }else if(value == 2){
                  print("Logout menu is selected.");
                }
              }
          ),
        ],
      ),
      body: Center(
    child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0,30,0,0),
            child: Container(
            child: DialogExample()

    ),),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, 'ImageSlider');
            },
            icon: Icon( // <-- Icon
              Icons.image,
              size: 24.0,
            ),
            label: Text('Image Slider'), // <-- Text
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, 'bottom');
            },
            icon: Icon( // <-- Icon
              Icons.navigation,
              size: 24.0,
            ),
            label: Text('Bottom Navigation'), // <-- Text
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, 'calendar');
            },
            icon: Icon( // <-- Icon
              Icons.calendar_month,
              size: 24.0,
            ),
            label: Text('Calendar'), // <-- Text
          ),
          CircleAvatar(
            backgroundColor: Colors.blue,
            child: IconButton(
              color: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, 'listView');
              },
              icon: Icon(Icons.navigate_next),
            ),
          ),
      ],
    ),),);
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Action'),
            content: const Text("This action can't be completed"),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'Cancel'),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ),
        ),
        style: ElevatedButton.styleFrom(
          padding:  const EdgeInsets.fromLTRB(15, 15, 15, 15),
          primary: Colors.blue,),
        child: const Text(
            style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 18),
            'Alert')
    );
  }
}
