import 'package:flutter/material.dart';
import 'package:lab03/screens/homeScreen.dart';

void main() {
  runApp(const MyApp());
}
/*!!!!!!       HOME PAGE CODE IS IN "lib/screens/homeScreen.dart"       !!!!!!*/
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
