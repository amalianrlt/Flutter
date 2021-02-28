import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Color color1 = Colors.red;
    Color color2 = Colors.amber;
    Color targetColor;
    bool isAccepted = false;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Drag and drop'),),
        body:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Draggable<Color>(
                  data: color1,
                  child: SizedBox(width:50, height:50, child: Material(color: color1, shape: StadiumBorder(),)),
                  feedback: SizedBox(width:50, height:50, child: Material(color: color1.withOpacity(0.7), shape: StadiumBorder(), )),
                  childWhenDragging: SizedBox(width:50, height:50, child: Material(color: Colors.black26, shape: StadiumBorder(),)),
                ),
                Draggable<Color>(
                  data: color2,
                  child: SizedBox(width:50, height:50, child: Material(color: color2, shape: StadiumBorder(),)),
                  feedback: SizedBox(width:50, height:50, child: Material(color: color2.withOpacity(0.7), shape: StadiumBorder(), )),
                  childWhenDragging: SizedBox(width:50, height:50, child: Material(color: Colors.black26, shape: StadiumBorder(),)),
                ),
              ]
            ),
            DragTarget<Color>(
              onAccept: (value) {isAccepted = true; targetColor = value;},
              onWillAccept: (value) => true,
              builder: (context, candidates, rejected) {
                return (isAccepted) ? 
                  SizedBox(width:100, height:100, child: Material(color: targetColor, shape: StadiumBorder(),)) :
                  SizedBox(width:100, height:100, child: Material(color: Colors.black26, shape: StadiumBorder(),));
              }, 
            )
          ],
        ),
        ),
    );
  }
}
