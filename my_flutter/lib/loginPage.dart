import 'package:flutter/material.dart';
import 'package:my_flutter/mainPage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('LOGIN'),
          onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
              return MainPage();
            }));
          })
      )
    );
  }
}