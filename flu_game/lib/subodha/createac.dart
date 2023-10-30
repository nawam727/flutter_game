// ignore_for_file: non_constant_identifier_names, library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController emailController =
      TextEditingController as TextEditingController;
  late String imagePath;
  bool isRegistered = false;

  void _handleRegistration() {
    setState(() {
      isRegistered = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Account'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (isRegistered)
              const Text(
                'Registration Successful!',
                style: TextStyle(fontSize: 20, color: Colors.green),
              )
            else
              Column(
                children: [
                  RaisedButton(
                    onPressed: () {
                      // Implement logic to get the user's image.
                      // You can use plugins like image_picker.
                    },
                    child: const Text('Select Image'),
                  ),
                  TextField(
                    controller: firstNameController,
                    decoration: const InputDecoration(labelText: 'First Name'),
                  ),
                  TextField(
                    controller: lastNameController,
                    decoration: const InputDecoration(labelText: 'Last Name'),
                  ),
                  TextField(
                    controller: phoneNumberController,
                    decoration:
                        const InputDecoration(labelText: 'Phone Number'),
                  ),
                  TextField(
                    controller: emailController,
                    decoration: const InputDecoration(labelText: 'Email'),
                  ),
                  RaisedButton(
                    onPressed: _handleRegistration,
                    child: const Text('Submit'),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

RaisedButton({required Null Function() onPressed, required Text child}) {}
