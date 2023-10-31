// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp44());
}

class MyApp44 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CreateAccountPage(),
    );
  }
}

class CreateAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 72, 255, 0),
                  ),
                ),
                SizedBox(height: 20),
                _buildTextField('First Name'),
                _buildTextField('Last Name'),
                _buildTextField('Birthdate'),
                _buildTextField('Gender'),
                _buildTextField('NIC'),
                _buildTextField('Address'),
                _buildTextField('Phone Number'),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Implement your registration logic here.
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 94, 255, 0),
                    onPrimary: Colors.black,
                  ),
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.yellow),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.yellow),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.yellow),
          ),
        ),
        style: TextStyle(color: Colors.yellow),
      ),
    );
  }
}
