import 'package:flutter/material.dart';
import 'package:gess_game/pages/home_page.dart';

class GameOverPage extends StatelessWidget {
  final int secretNumber;
  const GameOverPage({super.key, required this.secretNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 152, 186, 214),
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Sorry Game Over.My secret number is\n $secretNumber",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: const Text("Play agian"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
