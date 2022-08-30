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
          backgroundColor: Colors.amberAccent,
        ),
        drawer: const Drawer(),
        body: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.amberAccent, width: 5),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5,
                  blurStyle: BlurStyle.normal),
            ],
            color: Colors.red,
            borderRadius: const BorderRadius.all(Radius.circular(50)),
          ),
          alignment: Alignment.center,
          margin: const EdgeInsets.all(20),
          width: double.infinity,
          height: double.infinity,
          child: const Text(
            "Hello LTUC!",
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
