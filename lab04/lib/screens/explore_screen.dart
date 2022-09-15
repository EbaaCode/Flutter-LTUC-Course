import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    const sidePadding = EdgeInsets.symmetric(horizontal: 25);
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: sidePadding,
            child: Row(
              children: const [
                BackButton(),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text(
              "Top places!",
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      width: 180,
                      height: 200,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://thumbs.dreamstime.com/b/ancient-city-petra-jordan-al-khazneh-treasury-tourist-attraction-ancient-city-petra-jordan-al-khazneh-treasury-218079265.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                            topLeft: Radius.circular(100),
                            topRight: Radius.circular(100)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Petra",
                      style: TextStyle(fontSize: 25),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 180,
                      height: 200,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8B1oCRFkdo_cy3jgDSB7LLhjVy6V3Yzw0qH5JRP5xFZWd8-GOPpfwbZlEZ0L3fAwjMw4&usqp=CAU"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                            topLeft: Radius.circular(100),
                            topRight: Radius.circular(100)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Istanbul",
                      style: TextStyle(fontSize: 25),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      width: 180,
                      height: 200,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://i.pinimg.com/736x/63/97/cb/6397cb81fcb6db54d52e520ad91ae42c.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                            topLeft: Radius.circular(100),
                            topRight: Radius.circular(100)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Germany",
                      style: TextStyle(fontSize: 25),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 180,
                      height: 200,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://cdna.artstation.com/p/assets/images/images/027/965/894/large/binayak-mondal-346feb2b-6d78-41ff-973f-a2f66a776645.jpg?1593093912"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                            topLeft: Radius.circular(100),
                            topRight: Radius.circular(100)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Stockholm",
                      style: TextStyle(fontSize: 25),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BackButton extends StatefulWidget {
  const BackButton({super.key});

  @override
  State<BackButton> createState() => _BackButtonState();
}

class _BackButtonState extends State<BackButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(
          () {
            Navigator.pop(context);
          },
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        fixedSize: const Size(45, 45),
        shadowColor: Colors.transparent,
      ),
      child: const Icon(
        Icons.arrow_back,
        size: 30,
        color: Colors.black,
      ),
    );
  }
}
