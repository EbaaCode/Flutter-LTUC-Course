import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(backgroundColor: Colors.redAccent),
      body: const Center(
          child: Text(
        "Hello from screen #1",
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
