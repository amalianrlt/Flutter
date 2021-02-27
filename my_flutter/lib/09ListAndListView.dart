import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;

  // //bikin constructor
  // _MyAppState(){
  //   for (int i = 1; i <= 15; i++) {
  //     widgets.add(
  //       Text('Data ke-' + i.toString(),
  //       style: TextStyle(fontSize: 50)));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List and List View'),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                    child: Text('Tambah Data'),
                    onPressed: () {
                      setState(() {
                        widgets.add(Text('Data ke-' + counter.toString()));
                        counter++;
                      });
                    }),
                RaisedButton(
                    child: Text('Hapus Data Data'),
                    onPressed: () {
                      setState(() {
                        widgets.removeLast();
                        counter--;
                      });
                    }),
              ],
            ),
            Column(children: widgets)
          ],
        ),
      ),
    );
  }
}
