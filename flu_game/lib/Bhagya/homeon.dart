// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp2());
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardingPage(),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HACKTOBERFEST'),
        backgroundColor: Color.fromARGB(255, 255, 0, 0),
      ),
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.orange,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.brown,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
