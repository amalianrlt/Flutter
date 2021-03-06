import 'package:flutter/material.dart';
import 'package:my_flutter/thirdPage.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Second Page')),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Input your name',
                    prefixIcon: Icon(Icons.person)),
                controller: controller,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              Text(controller.text),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: RaisedButton(
                    child: Text('Submit'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ThirdPage();
                      }));
                    }),
              )
            ],
          ),
        ));
  }
}
