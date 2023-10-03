import 'dart:async';
import 'package:flu_game/barriers.dart';
import 'package:flu_game/ninja.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static double ninjaYaxis = 0;
  double time = 0;
  double height = 0;
  double initialHeight = ninjaYaxis;
  bool gamehasStarted = false;

  static double barrierXone = 1;
  double barrierXtwo = barrierXone + 1.5;

  void jump() {
    setState(() {
      time = 0;
      initialHeight = ninjaYaxis;
    });
  }

  void startGame() {
    gamehasStarted = true;
    Timer.periodic(Duration(milliseconds: 50), (timer) {
      time += 0.04;
      height = -4.9 * time * time + 2.8 * time;
      setState(() {
        ninjaYaxis = initialHeight - height;
        barrierXone -= 0.05;
        barrierXtwo -= 0.05;
      });

      setState(() {
        if (barrierXone < -2) {
        barrierXone += 3.5;
      } else {
        barrierXone -= 0.05;
      }
      });

      setState(() {
        if (barrierXtwo < -2) {
        barrierXtwo += 3.5;
      } else {
        barrierXtwo -= 0.05;
      }
      });

      if (ninjaYaxis > 1) {
        timer.cancel();
        gamehasStarted = false;
      }
    });
  }
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
                    if (gamehasStarted) {
                      jump();
                    } else {
                      startGame();
                    }
                  },
      child: Scaffold(
         appBar: AppBarWithMenu(
        title: title[_selectedIndex],
        notifications: 4,
      ),
        body: Column(children: [
          Expanded(
              flex: 2,
              child: Stack(
                children: [
                  AnimatedContainer(
                    alignment: Alignment(0, ninjaYaxis),
                    duration: Duration(milliseconds: 0),
                    color: Colors.blue,
                    child: MyNinja(),
                  ),
                  Container(
                    alignment: Alignment(0, -0.3),
                    child: gamehasStarted
                        ? Text(" ")
                        : Text(
                            "TAP TO PLAY",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                  ),
                  AnimatedContainer(
                    alignment: Alignment(barrierXone, 1.1),
                    duration: Duration(milliseconds: 0),
                    child: MyBarrier(
                      size: 200.0,
                    ),
                  ),
                  AnimatedContainer(
                    alignment: Alignment(barrierXone, -1.1),
                    duration: Duration(milliseconds: 0),
                    child: MyBarrier(
                      size: 200.0,
                    ),
                  ),
                  AnimatedContainer(
                    alignment: Alignment(barrierXtwo, 1.1),
                    duration: Duration(milliseconds: 0),
                    child: MyBarrier(
                      size: 150.0,
                    ),
                  ),
                  AnimatedContainer(
                    alignment: Alignment(barrierXtwo, -1.1),
                    duration: Duration(milliseconds: 0),
                    child: MyBarrier(
                      size: 250.0,
                    ),
                  ),
                ],
              )),
          Container(
            height: 15,
            color: Colors.green,
          ),
          Expanded(
              child: Container(
            color: Colors.brown,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Score",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '0',
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Best",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '10',
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                  ],
                ),
              ],
            ),
          )),
        ]),
      ),
    );
  }
}
