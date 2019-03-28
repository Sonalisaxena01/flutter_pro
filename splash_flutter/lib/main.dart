import 'package:flutter/material.dart';


void main() => runApp( MaterialApp(
  theme:
  ThemeData(primaryColor: Colors.white, accentColor: Colors.yellow),
  debugShowCheckedModeBanner: false,
  home: SplashScreen(),
));

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.white),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.yellow,
                        radius: 50.0,
                        child: Icon(
                          Icons.hourglass_empty,
                          color: Colors.black,
                          size: 50.0,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top:10.0)),
                      Text(
                        "Utfive", style: TextStyle(color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.bold ),

                      )

                    ],
                  ),
                ),
              ),
              Expanded(flex: 1,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(),
                Padding(padding:  EdgeInsets.only(top:20.0)
                ),
                Text("Designed for your interests", style: TextStyle(color: Colors.black ,fontSize: 18.0,fontWeight: FontWeight.bold))
              ],

    ),)
            ],
          )
        ],
      ),


    );
  }
}
