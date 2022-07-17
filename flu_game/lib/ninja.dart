import 'package:flutter/material.dart';

class MyNinja extends StatelessWidget {
  const MyNinja({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      child: Image.asset(
        "lib/images/ninja.png"
      ),
    );
  }
}
