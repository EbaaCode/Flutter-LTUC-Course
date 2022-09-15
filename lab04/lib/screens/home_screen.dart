import 'package:flutter/material.dart';
import 'package:lab04/screens/explore_screen.dart';
import 'package:lab04/screens/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    const sidePadding = EdgeInsets.symmetric(horizontal: 25);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://i.pinimg.com/originals/c3/89/cf/c389cf81cf8fddcba432010f52be6aa8.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Padding(
              padding: sidePadding,
              child: Text(
                "Where is your next trip?",
                style: TextStyle(
                    fontSize: 60,
                    color: Colors.white.withAlpha(220),
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 330),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const ExploreScreen();
                              },
                            ),
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent.withAlpha(200),
                        fixedSize: const Size(180, 220),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Explore places",
                            style: TextStyle(
                              fontSize: 23,
                            ),
                          ),
                          Icon(
                            Icons.map,
                            color: Colors.white,
                            size: 50,
                          )
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const SettingsScreen();
                              },
                            ),
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent.withAlpha(150),
                        fixedSize: const Size(180, 220),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "User Settings",
                            style: TextStyle(
                              fontSize: 23,
                            ),
                          ),
                          Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 50,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
