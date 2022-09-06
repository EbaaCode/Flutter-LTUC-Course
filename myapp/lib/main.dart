import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool flutterCourse = false;
  bool reactCourse = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Column(
            children: [
              const Divider(height: 50),
              //? Title
              const Text(
                "Please select your course!",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w300),
              ),
              const Divider(height: 50),
              //! CHECKBOX #1
              CheckboxListTile(
                secondary: const Icon(
                  Icons.book,
                  color: Colors.black12,
                ),
                subtitle: const Text("Based on the dart programming language.",
                    style: TextStyle(fontSize: 20, color: Colors.black54)),
                title: const Text(
                  "Flutter",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                value: flutterCourse,
                onChanged: ((value) {
                  flutterCourse = value!;
                  setState(() {});
                }),
              ),
              //! CHECKBOX #2
              CheckboxListTile(
                secondary: const Icon(
                  Icons.book,
                  color: Colors.black12,
                ),
                subtitle: const Text(
                    "Based on the Typescript programming language.",
                    style: TextStyle(fontSize: 20, color: Colors.black54)),
                title: const Text(
                  "React",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                value: reactCourse,
                onChanged: ((value) {
                  reactCourse = value!;
                  setState(() {});
                }),
              ),
              if (flutterCourse)
                const Image(
                  image: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/2560px-Google-flutter-logo.svg.png"),
                ),
              if (reactCourse)
                const Image(
                  image: NetworkImage(
                      "https://logos-download.com/wp-content/uploads/2016/09/React_logo_wordmark.png"),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
