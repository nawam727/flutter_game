import 'package:flutter/material.dart';
import 'package:gess_game/pages/home_page.dart';

class RightGessPage extends StatelessWidget {
  final int secretNumber;
  const RightGessPage({super.key, required this.secretNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 171, 255, 174),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Yes,Your gess is right.My secret number is \n$secretNumber ",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: const Text("Start the Game again"),
            ),
          ],
        ),
      ),
    );
  }
}
