import 'package:flutter/material.dart';

class MyCustomAlert extends StatefulWidget {
  const MyCustomAlert({super.key});

  @override
  State<MyCustomAlert> createState() => _MyCustomAlertState();
}

class _MyCustomAlertState extends State<MyCustomAlert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Alert"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                showDialog(context: context,
                  builder: (BuildContext context){
                  return SimpleDialog("This is a simple dialog");
                },);
              },
              icon: Icon( // <-- Icon
                Icons.add_alert,
                size: 24.0,
              ),
              label: Text('Simple Alert Dialog'), // <-- Text
            ),
            ElevatedButton.icon(
              onPressed: () {
                showDialog(context: context,
                  builder: (BuildContext context){
                    return SimpleCustomAlert("This is simple Custom Alert");
                  },);
              },
              icon: Icon( // <-- Icon
                Icons.add_alert_rounded,
                size: 24.0,
              ),
              label: Text('Simple Custom Alert'), // <-- Text
            ),
            ElevatedButton.icon(
              onPressed: () {
                showDialog(context: context,
                  builder: (BuildContext context){
                    return AdvanceCustomAlert("This is Advance Custom Alert");
                  },);
              },
              icon: Icon( // <-- Icon
                Icons.add_alert_outlined,
                size: 24.0,
              ),
              label: Text('Advance Custom Alert'), // <-- Text
            ),
          ],
        ),
      ),
    );
  }
}

class SimpleDialog extends StatelessWidget {
  final title;
  SimpleDialog(this.title);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Alert"),
      content:Text("Title") ,
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
    );
  }
}

class SimpleCustomAlert extends StatelessWidget {
  final title;
  SimpleCustomAlert(this.title);
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Container(
        height: 200,
        child: Column(
          children: [
            Expanded(
              child: Container(
              color: Colors.white70,
              child: Icon(Icons.account_balance_wallet,size: 60,),
            ),),
            Expanded(
              child: SizedBox.expand(
                child: Container(
                color: Colors.redAccent,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text(title,style: TextStyle(color: Colors.white),),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Okay'),
                        child: const Text('Okay',
                        style: TextStyle(color: Colors.white)
                        ),
                      ),
                    ],
                  ),
                ),
            ),
              ),),
          ],
        ),
      ),
    );
  }
}

class AdvanceCustomAlert extends StatelessWidget {
  final title;
  AdvanceCustomAlert(this.title);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 200,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10,70,10,10),
              child: Column(
                children: [
                   Text("Warning !!!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                  SizedBox(height: 5,),
                  Text("You can't access this file.",style: TextStyle(fontSize: 20),textAlign: TextAlign.center),
                  SizedBox(height:20),
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Okay'),
                    child: const Text('Okay',
                        style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ),
        const Positioned(
          top: -60,
          child: CircleAvatar(
          backgroundColor: Colors.redAccent,
          radius: 50,
          child: Icon(Icons.assistant_photo,size: 56,color: Colors.white,),
        ),
        ),
        ],
      ),
    );
  }
}
