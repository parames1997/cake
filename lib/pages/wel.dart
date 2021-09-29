import 'package:cake/pages/berry.dart';
import 'package:cake/pages/cherry.dart';
import 'package:cake/pages/lemon.dart';
import 'package:flutter/material.dart';

class Welcomepage extends StatefulWidget {
  _WelcomepageState createState() => new _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
            final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        leading:new IconButton(
  icon: new Icon(Icons.arrow_back_ios_new,color: Colors.brown,),
  onPressed: () { Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(builder: (context) => Welcomepage()),
  (Route<dynamic> route) => false,
); },
),
         
        backgroundColor: Colors.white,
        elevation: 0,
        title: new Text(
          "CAKE & Bites",
          style: TextStyle(color: Colors.brown),
        ),
      ),
      body:
     PageView(
      scrollDirection: Axis.horizontal ,
      controller: controller,
       children:[
        Lemon(),
        Cheery(),
        Berry()
      ],
     )
    );

        
      
        
  }
}
