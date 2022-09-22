import 'package:flutter/material.dart';

import 'screens.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade300,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const TabScreen();
                  },
                ),
              );
            },
            icon: const Icon(Icons.store),
          ),
        ],
        title: Row(
          children: const [
            Icon(Icons.home),
            SizedBox(width: 20),
            Text("Home Page"),
          ],
        ),
      ),
      body: const Center(child: Text("Welcome to the Home page!")),
    );
  }
}
