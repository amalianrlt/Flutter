import 'package:flutter/material.dart';
import 'package:my_flutter/secondPage.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        title: Text('Main Page'),
        leading: Icon(Icons.menu, color: Colors.white,),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.photo_camera), color: Colors.white, onPressed: (){}),
          IconButton(icon: Icon(Icons.navigate_next), color: Colors.white, onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return SecondPage();
              }));
            }),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient : LinearGradient(colors: [Colors.deepPurple, Colors.purple[100]], begin: FractionalOffset.topLeft, end: FractionalOffset.bottomLeft)
          ),
        ),
        ),
      body: Container(
        padding: EdgeInsets.all(5),
        child: ListView(
          children: <Widget>[
            contactCard('Kenzo'),
            contactCard('Quenzha'),
          ]
        ),
      )
    );
  }

  Card contactCard(String text) {
    return Card(
            child: Row(
              children: <Widget>[
                Container(margin: EdgeInsets.all(5), child: Icon(Icons.perm_contact_calendar),),
                Text(text)
              ],)
          );
  }
}