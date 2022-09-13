import 'package:flutter/material.dart';
import 'package:screen_app/screens/screen_one.dart';
import 'package:screen_app/screens/screen_three.dart';
import 'package:screen_app/screens/screen_two.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const ScreenOne();
                    },
                  ));
                });
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  minimumSize: const Size(150, 35)),
              child: const Text("Go to screen #1"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const ScreenTwo();
                    },
                  ));
                });
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  minimumSize: const Size(150, 35)),
              child: const Text("Go to screen #2"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const ScreenThree();
                    },
                  ));
                });
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purpleAccent,
                  minimumSize: const Size(150, 35)),
              child: const Text("Go to screen #3"),
            )
          ],
        ),
      ),
    );
  }
}
