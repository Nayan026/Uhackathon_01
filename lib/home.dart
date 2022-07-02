import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:uhackathon_01/screen_1.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(

            backgroundColor: Color(0xFFE1EAF9),
            body:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                  child: Center(
                      child: Image(image: AssetImage('assets/css1.png')))),
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
                      'About us ',
                      style: TextStyle(height: 1, fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => screen_1()),
                      );
                      },
                  ),
                ),
              ),


            ])));
  }
}
