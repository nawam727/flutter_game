// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp3());
}

class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EditProfilePage(),
    );
  }
}

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedBackground(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Edit Details',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                UserImageUploadButton(),
                SizedBox(height: 20),
                EditTextField(label: 'Name'),
                SizedBox(height: 20),
                EditTextField(label: 'Phone Number'),
                SizedBox(height: 20),
                AnimatedRainbowButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AnimatedBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Container(
          width: 1350,
          height: 1350,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(
              colors: [
                Colors.red,
                Colors.orange,
                Colors.yellow,
                Colors.green,
                Colors.blue,
                Colors.indigo,
                Colors.purple,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UserImageUploadButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: Colors.white,
          child: Icon(Icons.camera_alt, size: 40, color: Colors.grey),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            // Implement logic to upload user image
          },
          child: Text('Upload Image'),
        ),
      ],
    );
  }
}

class EditTextField extends StatelessWidget {
  final String label;

  EditTextField({required this.label});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
      style: TextStyle(color: Colors.white),
    );
  }
}

class AnimatedRainbowButton extends StatefulWidget {
  @override
  _AnimatedRainbowButtonState createState() => _AnimatedRainbowButtonState();
}

class _AnimatedRainbowButtonState extends State<AnimatedRainbowButton> {
  double _width = 150;
  double _height = 50;

  void _animateButton() {
    setState(() {
      _width = 160;
      _height = 60;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      width: _width,
      height: _height,
      child: ElevatedButton(
        onPressed: () {
          _animateButton();
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
        ),
        child: Text(
          'Submit Change',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
