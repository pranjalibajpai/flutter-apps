import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
//Stateless Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 60.0,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 57.0,
                    backgroundImage: AssetImage('images/pranjali.jpg'),
                  ),
                ),
                Text(
                  'Pranjali Bajpai',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    wordSpacing: 1.9,
                    fontFamily: 'Paprika',
                  ),
                ),
                Text(
                  'BUDDING DEVELOPER',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Sofia',
                    letterSpacing: 1.2,
                  ),
                ),
                Card(
                  margin: EdgeInsets.fromLTRB(60, 30, 55, 0),
                  color:Colors.white24,
                  child: Padding(
                    padding:EdgeInsets.all(12),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.email,
                        color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'pranjali.b2014@gmail.com',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.fromLTRB(60, 30, 55, 0),

                  color:Colors.white24,
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.phone,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '+91-1122334455',
                          style: TextStyle(
                            color: Colors.white,

                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
