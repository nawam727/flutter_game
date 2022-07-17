import 'package:flutter/material.dart';

class MyBarrier extends StatelessWidget {
  final size;

  MyBarrier({this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: size,
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(width: 4,color: Colors.grey),
        borderRadius: BorderRadius.circular(4)
      ),
    );
  }
}
