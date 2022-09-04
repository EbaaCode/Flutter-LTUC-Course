import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 149, 107, 240),
        ),
        body: Container(
          child: Center(
            child: Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(10, 10),
                      textStyle: const TextStyle(fontSize: 30),
                      shadowColor: Colors.red,
                      elevation: 10,
                      primary: Colors.red,
                      onPrimary: Colors.redAccent),
                  onPressed: () {
                    print("Hello from the 1st button.");
                  },
                  child: const Text(
                    "1st Button",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(10, 10),
                      textStyle: const TextStyle(fontSize: 25),
                      shadowColor: Colors.purple,
                      elevation: 15,
                      primary: Colors.purple,
                      onPrimary: Colors.purpleAccent),
                  onPressed: () {
                    print("Hello from the 2nd button.");
                  },
                  child: const Text(
                    "2nd Button",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
