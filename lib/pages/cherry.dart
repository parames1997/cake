import 'package:flutter/material.dart';

class Cheery extends StatefulWidget {
  @override
  _CheeryState createState() => _CheeryState();
}

class _CheeryState extends State<Cheery> {
    bool selected = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(backgroundColor: Color.fromRGBO(194, 30, 86, 0.1),
      body: Stack(
        fit: StackFit.passthrough,
        overflow: Overflow.visible,
        children: <Widget>[
          Positioned(
            bottom: 10,
            left: 10,
            child: Container(
              width: size.width * 0.95,
                height: selected ? size.height * 0.95 : size.height * 0.65,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xfff01920), Color(0xffc21e56)],
                ),
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
            ),
          ),

          Positioned(
            
            child:AnimatedContainer(
              duration:   Duration(seconds: 1),
             alignment: selected ? Alignment.topRight : AlignmentDirectional.topCenter,
             child: 

             ClipRRect(
     borderRadius: BorderRadius.circular(35.0),
     child: Image.asset(
       'assets/images/790.jpg',
        width: 260.0,
        height: 255.0,
        fit: BoxFit.fill,
     ),
 ),
          ),),
          Positioned(
              bottom: 370,
              left: 25,
              child: Text(
                'Cheery Chessy',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w900),
              )),
          Positioned(
            bottom: 330,
            left: 25,
            child: Container(
              height: 5.0,
              width: 150.0,
              color: Colors.white,
            ),
          ),
          Positioned(
            bottom: 250,
            left: 25,
            child: Container(
              margin: EdgeInsets.all(10),
              height: 50.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.white)),
                onPressed: () {},
                padding: EdgeInsets.all(10.0),
                color: Color(0xffc21e56),
                textColor: Colors.white,
                child: Row(
                  children: [
                    Icon(
                      Icons.local_dining,
                      color: Colors.white,
                      size: 20,
                    ),
                    Text(
                      'Cakes Point',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 200,
              left: 25,
              child:new GestureDetector(
                  onTap: ()=>setState((){
                                        selected= !selected;
}),
                  child:  new Container(
                    child:
                   Row(
                    children: [
                      Text(
                        'know more',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.normal),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 25,
                        color: Colors.white,
                      )
                    ],
                  ))),),
          Positioned(
              bottom: -115,
              left: 25,
              child: new AnimatedContainer(
                duration: const Duration(milliseconds: 120),
                height: selected ? 300.0 : 00.0,

                color: Colors.transparent,
                width: size.width * 0.95,
                child:
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               Text(
                  'Besides the milk and eggs, flour and sugar are the main ingredients in cake, which are excellent sources for carbohydrates (which do provide your body, brain, and muscles with energy). ',
                 maxLines: 5, style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                ),

          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                'https://images.unsplash.com/photo-1488477304112-4944851de03d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTR8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                width: 100,
                height: 60,
              ),
              Image.network(
                'https://images.unsplash.com/photo-1604413191066-4dd20bedf486?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGluayUyMGNha2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80',
                width: 100,
                height: 60,
              ),
              Image.network(
                'https://storcpdkenticomedia.blob.core.windows.net/media/recipemanagementsystem/media/recipe-media-files/recipes/retail/x17/16714-birthday-cake-600x600.jpg?ext=.jpg',
                width: 100,
                height: 60,
              ),
              
            ],
          )
          ],
          ),
          )
          )
        ],
      ),
    );
  }
}
