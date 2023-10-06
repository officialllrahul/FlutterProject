import 'package:flutter/material.dart';

class MyCircleAvatar extends StatefulWidget {
  const MyCircleAvatar({super.key});

  @override
  State<MyCircleAvatar> createState() => _MyCircleAvatarState();
}

class _MyCircleAvatarState extends State<MyCircleAvatar> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
        title: const Text('CircleAvatar'),),
        body: SingleChildScrollView(

          child: Column(
            children: [
              Container(
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80"),),
              ),
              Container(
                child: CircleAvatar(
                  backgroundColor: Colors.brown.shade800,
                  child: const Text('AH'),
                ),
              ),
              Container(
                child: const CircleAvatar(radius: 50,
                backgroundImage: NetworkImage("https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80"),),
              ),
              Container(
                child: const CircleAvatar(radius: 50,
                  backgroundImage: AssetImage("assets/img.png")),
              ),
              Container(
                child: CircleAvatar(
                  radius: 40,
                    backgroundColor: Colors.blue,
                    child: IconButton(
                      iconSize: 70,
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pushNamed(context, 'listView');
                      },
                      icon: Icon(Icons.navigate_next),
                    ),
                  ),
                ),
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.red,
                      ),
                      Container(
                        width: 90,
                        height: 90,
                        color: Colors.green,
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        color: Colors.blue,
                      ),
                    ],
                  ),
              Wrap(
                spacing: 8.0, // gap between adjacent chips
                runSpacing: 4.0, // gap between lines
                children: <Widget>[
                  Chip(
                    avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('AH')),
                    label: const Text('Hamilton'),
                  ),
                  Chip(
                    avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('ML')),
                    label: const Text('Lafayette'),
                  ),
                  Chip(
                    avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('HM')),
                    label: const Text('Mulligan'),
                  ),
                  Chip(
                    avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('JL')),
                    label: const Text('Laurens'),
                  ),
                ],
              ),
              const TableExample(),
              const Row(
                children: <Widget>[
                  Expanded(
                    child: Text('Deliver features faster', textAlign: TextAlign.center),
                  ),
                  Expanded(
                    child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
                  ),
                  Expanded(
                    child: FittedBox(
                      child: FlutterLogo(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}


class TableExample extends StatelessWidget {
  const TableExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      columnWidths: const <int, TableColumnWidth>{
        0: IntrinsicColumnWidth(),
        1: FlexColumnWidth(),
        2: FixedColumnWidth(64),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: <TableRow>[
        TableRow(
          children: <Widget>[
            Container(
              height: 32,
              color: Colors.green,
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.top,
              child: Container(
                height: 32,
                width: 32,
                color: Colors.red,
              ),
            ),
            Container(
              height: 64,
              color: Colors.blue,
            ),
          ],
        ),
        TableRow(
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
          children: <Widget>[
            Container(
              height: 64,
              width: 128,
              color: Colors.purple,
            ),
            Container(
              height: 32,
              color: Colors.yellow,
            ),
            Center(
              child: Container(
                height: 32,
                width: 32,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

