// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp33());
}

class MyApp33 extends StatelessWidget {
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
                  'Edit User Details',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                UserImageUploadButton(),
                SizedBox(height: 22),
                EditTextField(label: 'User Name'),
                SizedBox(height: 22),
                EditTextField(label: 'User Phone Number'),
                SizedBox(height: 22),
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
      color: const Color.fromARGB(255, 26, 6, 6),
      child: Center(
        child: Container(
          width: 1350,
          height: 1350,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
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
          radius: 70,
          backgroundColor: Colors.white,
          child: Icon(Icons.camera_alt, size: 60, color: Colors.grey),
        ),
        SizedBox(height: 15),
        ElevatedButton(
          onPressed: () {},
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
        labelStyle: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: const Color.fromARGB(255, 0, 0, 0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: const Color.fromARGB(255, 0, 0, 0)),
        ),
      ),
      style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
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
          backgroundColor: MaterialStateProperty.all(Colors.amber),
        ),
        child: Text(
          'Submit',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
