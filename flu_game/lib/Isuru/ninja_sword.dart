import 'package:flutter/material.dart';
import 'package:green_connect/components/app_bar_with_back.dart';

class SettingsMain extends StatelessWidget {
  const SettingsMain({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWithBack(title: "Settings"),
      body: Center(
        child: Text("Settings"),
      ),
    );
  }
}