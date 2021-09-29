import 'package:cake/components/background.dart';
import 'package:flutter/material.dart';

import 'pages/wel.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
                      SizedBox(height: size.height * 0.15),

        Container(
          height: 50.0,
          margin: EdgeInsets.all(10),
          child: RaisedButton(
            onPressed: () {
               Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Welcomepage()),
  );
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80.0)),
            padding: EdgeInsets.all(0.0),
            child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xffe28743),
                     Color(0xffeab676)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Container(
                constraints: BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                alignment: Alignment.center,
                child: Text(
                  "WELCOME",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
          ),
        ),
      ]),
    ));
  }
}
