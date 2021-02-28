import 'package:flutter/material.dart';
import 'package:my_flutter/secondPage.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
        leading: Icon(Icons.menu, color: Colors.white,),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.photo_camera), color: Colors.white, onPressed: (){}),
          IconButton(icon: Icon(Icons.exit_to_app), color: Colors.white, onPressed: (){}),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient : LinearGradient(colors: [Colors.deepPurple, Colors.yellow], begin: FractionalOffset.topLeft, end: FractionalOffset.bottomLeft)
          ),
        ),
        ),
      body: Center(
        child: RaisedButton(
          child: Text('go to second page'),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return SecondPage();
            }));
          })
      )
    );
  }
}