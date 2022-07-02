import 'package:flutter/material.dart';

class screen_2 extends StatefulWidget {
  const screen_2({Key? key}) : super(key: key);

  @override
  State<screen_2> createState() => _screen_2State();
}

class _screen_2State extends State<screen_2> {
// By defaut, the checkbox is unchecked and "agree" is "false"
bool agree = false;

// This function is triggered when the button is clicked
void _doSomething() {
// Do something
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color(0xFFE1EAF9),
            body: ListView(shrinkWrap: true, children: <Widget>[
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        child: Image(
                      height: 300,
                      width: 400,
                      image: AssetImage('assets/login.png'),
                    )),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                        child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFF85C55), // background
                        onPrimary: Colors.white,
                        minimumSize: const Size(217, 40),
                        maximumSize: const Size(217, 40),
                        // foreground
                      ),
                      child: Text(
                        'Register Your Team',
                        style: TextStyle(height: 1, fontSize: 20),
                      ),
                      onPressed: () {},
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFF85C55), // background
                        onPrimary: Colors.white,
                        minimumSize: const Size(217, 40),
                        maximumSize: const Size(217, 40),
                        // foreground
                      ),
                      child: Text(
                        'Evaluator Sign-In',
                        style: TextStyle(height: 1, fontSize: 20),
                      ),
                      onPressed: () {},
                    )),
                    Container(
                        child: Row(
                          children: <Widget>[
                            Checkbox(value: agree,
                              onChanged: (value) {
                                setState(() {
                                  agree = value ?? false;
                                });
                              },),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("I agree to terms and conditions and privacy policy "),
                            )
                          ],
                        )

                    )
                  ]),
            ])));
  }
}
