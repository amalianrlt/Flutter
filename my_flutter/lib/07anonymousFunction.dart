import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String tombol = 'Tombol belum ditekan';

  // void tekanTombol(){
  //   setState(() {
  //     tombol = 'Tombol sudah ditekan';
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Anonymous Method'),
          ),
          body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(tombol),
                  RaisedButton(
                      child: Text('Tekan Saya'),
                      onPressed: () {
                        setState(() {
                          tombol = 'Tombol sudah ditekan';
                        });
                      })
                ]),
          )),
    );
  }
}
