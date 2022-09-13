import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      appBar: AppBar(backgroundColor: Colors.purpleAccent),
      body: const Center(
          child: Text(
        "Hello from screen #3",
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
