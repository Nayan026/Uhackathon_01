import 'dart:ui';

import 'package:flutter/material.dart';
import 'screen_2.dart';

class screen_1 extends StatefulWidget {
  const screen_1({Key? key}) : super(key: key);

  @override
  State<screen_1> createState() => _screen_1State();
}

class _screen_1State extends State<screen_1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color(0xFFE1EAF9),
            body:
                Column(mainAxisAlignment: MainAxisAlignment.center, children:[
                  SizedBox(
                      child: Center(
                          child: Image(image: AssetImage('assets/Group 12.png')))),
                  Padding(
                    padding: EdgeInsets.fromLTRB(1.0, 8.0, 3.0, 3.0),
                    child: SizedBox(
                      height: 40,
                      width: 217,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFF85C55), // background
                          onPrimary: Colors.white,
                          minimumSize: const Size(217, 40),
                          maximumSize: const Size(217, 40),
                          // foreground
                        ),
                        child: Text(
                          'Register Now! ',
                          style: TextStyle(height: 1, fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => screen_2()),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  Container(

                    child: Text("Already Registered?",
                        textAlign: TextAlign.end,
                        style: TextStyle(fontSize: 18, color: Colors.grey[700])),
                  ),
                  Container(
                      child:FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "YourRoute");
                        },
                        child: new Text("Sign In",style: TextStyle(color: Colors.redAccent[700],decoration: TextDecoration.underline,)),

                      )
                  )
                ])));
  }
}
