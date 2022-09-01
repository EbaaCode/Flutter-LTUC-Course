import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //! APP BAR
        appBar: AppBar(
          backgroundColor: Colors.blue,
          shadowColor: Colors.white,
        ),
        body: SingleChildScrollView(
          //! BACKGROUND
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(children: [
              const Image(
                image: NetworkImage(
                    "https://media.discordapp.net/attachments/922205499389280337/1014876480280461352/unknown.png?width=355&height=473"),
                alignment: Alignment.center,
                fit: BoxFit.fitWidth,
                width: double.infinity,
                height: 250,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.amber, width: 3),
                    ),
                    child: const Text(
                      "Kitty",
                      style: TextStyle(fontSize: 20, color: Colors.amberAccent),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 3),
                    ),
                    child: const Text(
                      "2 Months",
                      style: TextStyle(fontSize: 20, color: Colors.redAccent),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink, width: 3),
                    ),
                    child: const Text(
                      "Female",
                      style: TextStyle(fontSize: 20, color: Colors.pinkAccent),
                    ),
                  ),
                ],
              ),
              //! CONTAINER #2
              Container(
                margin: const EdgeInsets.all(30.0),
                child: const Image(
                  image: NetworkImage(
                      "https://media.discordapp.net/attachments/922205499389280337/1014876540967854092/unknown.png?width=353&height=473"),
                  alignment: Alignment.center,
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                  height: 250,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.amber, width: 3),
                    ),
                    child: const Text(
                      "Cat",
                      style: TextStyle(fontSize: 20, color: Colors.amberAccent),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 3),
                    ),
                    child: const Text(
                      "1 Year",
                      style: TextStyle(fontSize: 20, color: Colors.redAccent),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.cyan, width: 3),
                    ),
                    child: const Text(
                      "Male",
                      style: TextStyle(fontSize: 20, color: Colors.cyanAccent),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
