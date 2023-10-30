// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SignInForm(),
      ),
    );
  }
}

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Image.asset(
              "Assets/Mobile-sign in.png", // Replace with your image path
              width: 243,
              height: 243,
            ),
            Center(
              child: const Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email Address',
                hintText: 'Enter your email',
                prefixIcon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value!.isEmpty || !value.contains('@')) {
                  return 'Invalid email address';
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(Icons.visibility),
                  onPressed: () {
                    // Toggle password visibility
                  },
                ),
              ),
              obscureText: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Password is required';
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  value: false, // Add logic to manage "Remember me" state
                  onChanged: (value) {
                    // Handle "Remember me" checkbox state
                  },
                ),
                Text('Remember me'),
                Spacer(),
                TextButton(
                  onPressed: () {
                    // Handle "Forgot Password" button press
                  },
                  child: Text('Forgot Password'),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle sign-in logic
              },
              child: SizedBox(
                width: 350,
                height: 46,
                child: Center(
                  child: Text('Sign In'),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text('or login with'),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.g_translate),
                  onPressed: () {
                    // Handle Google sign-in
                  },
                ),
                IconButton(
                  icon: Icon(Icons.business),
                  onPressed: () {
                    // Handle Microsoft sign-in
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Navigate to the Sign Up page
              },
              child: Text(
                "Don't have an account?",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
