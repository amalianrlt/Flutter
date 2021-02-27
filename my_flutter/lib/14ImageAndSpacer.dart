import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: 
      AppBar(
        title: Text('Image')),
        body: Center(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Spacer(flex: 1,),
              Container(
                width: 100,
                height: 100,
                color: Colors.amber,
                padding: EdgeInsets.all(10),
                //from url
                // child: Image(image: NetworkImage('https://images.unsplash.com/photo-1520315342629-6ea920342047?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1000&q=80'),),
                //from asset, first step import image in yml
                child: Image(image: AssetImage('assets/psic-as.png'), height: 70, fit: BoxFit.cover,),
              ),
              Spacer(flex: 1,),
              Container(
                width: 100,
                height: 100,
                color: Colors.amber,
                padding: EdgeInsets.all(10),
                //from url
                // child: Image(image: NetworkImage('https://images.unsplash.com/photo-1520315342629-6ea920342047?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1000&q=80'),),
                //from asset, first step import image in yml
                child: Image(image: AssetImage('assets/psic-as.png'), height: 70, fit: BoxFit.cover,),
              ),
              Spacer(flex: 2,),
              Container(
                width: 100,
                height: 100,
                color: Colors.amber,
                padding: EdgeInsets.all(10),
                //from url
                // child: Image(image: NetworkImage('https://images.unsplash.com/photo-1520315342629-6ea920342047?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1000&q=80'),),
                //from asset, first step import image in yml
                child: Image(image: AssetImage('assets/psic-as.png'), height: 70, fit: BoxFit.cover,),
              ),
              Spacer(flex: 3,),
            ]
          ),
        ),
        )
    );
  }
}
