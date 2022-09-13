import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(backgroundColor: Colors.blueAccent),
      body: const Center(
          child: Text(
        "Hello from screen #2",
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
