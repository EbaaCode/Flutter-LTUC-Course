import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
        ),
        body: Container(
          margin: const EdgeInsets.all(30),
          alignment: Alignment.center,
          decoration:  BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(25)
          ),
          child: const Card(
            margin: EdgeInsets.all(25),
            shadowColor: Colors.black38,
            elevation: 100,
            color: Colors.redAccent,
            child: Text(
              "Happy Birthday!",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold
              )
            ),
          ),
        )
      ),
    );
  }
}