import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
          children: <Widget>[
            ClipPath(
              child: Container(
                  color: Colors.yellow.withOpacity(0.8)
              ),
              clipper: getClipper(),
            ),
            Positioned(
                width: 350.0,
                top: MediaQuery
                    .of(context)
                    .size
                    .height / 6,
                child: Column(
                    children: <Widget>[
                      Text(
                        'My Profile',
                        style: TextStyle(

                            fontSize: 30.0,
                            fontWeight: FontWeight.bold

                        ),
                      ),

                      Container(
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://ausdroid.net/wp-content/uploads/2017/05/contacts.png'),
                              fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(75.0)
                          ),

                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Username',

                        style: TextStyle(

                          fontSize: 20.0,


                        ),
                      ),

                      SizedBox(height: 10.0),
                      Column(
                        children: [
                          Container(
                            height: 100.0,
                            width: 300.0,
                            color: Colors.white,
                            child: Text(

                              '\t            @username'
                                  '\n\t    username@gmail.com'
                                  '           \n\t            contact no',
                              style: TextStyle(
                                fontSize: 25.0,

                              ),

                            ),
                          )

                        ],
                      ),

                      SizedBox(height: 150.0),
                      Container(

                        child: Center(
                          child: FlatButton.icon(
                            color: Colors.yellow,
                            icon: Icon(Icons.update), //`Icon` to display
                            label: Text('Edit Profile'), //`Text` to display
                            onPressed: () {

                            },
                          ),

                        ),



                      ),
                      SizedBox(height: 50.0),
                      Text(
                        '© utfive app.Version : 4.0',
                        style: TextStyle(

                          fontSize: 15.0,


                        ),
                      ),


                    ]        )
            )],
        ));
  }
}

class getClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size)
  {
    var path = new Path();

    path.lineTo(0.0, size.height/2);
    path.lineTo(size.width+70000,0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
