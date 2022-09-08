import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        backgroundColor: color,
      ),
      body: SafeArea(
        child: Column(
          children: [
            //! SHOE #1.
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Shoe #1"),
                const SizedBox(width: 100),
                const CustomContainer(
                  image:
                      'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/skwgyqrbfzhu6uyeh0gg/air-max-270-shoes-zTPvbr.png',
                ),
                Column(
                  children: const [
                    CustomButtons(
                      icon: Icons.star,
                    ),
                    CustomButtons(
                      icon: Icons.favorite,
                    ),
                    CustomButtons(
                      icon: Icons.repeat,
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            //! SHOE #2.
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Shoe #2"),
                const SizedBox(width: 100),
                Column(
                  children: const [
                    CustomButtons(
                      icon: Icons.star,
                    ),
                    CustomButtons(
                      icon: Icons.favorite,
                    ),
                    CustomButtons(
                      icon: Icons.repeat,
                    )
                  ],
                ),
                const CustomContainer(
                  image:
                      'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/ed291e67-4618-49ec-8dda-2c2221a5df41/revolution-6-next-nature-road-running-shoes-JQzLqf.png',
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            //! SHOE #3.
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Shoe #3"),
                const SizedBox(width: 100),
                Column(
                  children: [
                    Row(
                      children: const [
                        CustomButtons(
                          icon: Icons.star,
                        ),
                        CustomButtons(
                          icon: Icons.favorite,
                        ),
                        CustomButtons(
                          icon: Icons.repeat,
                        )
                      ],
                    ),
                    const CustomContainer(
                      image:
                          'https://static.nike.com/a/images/q_auto:eco/t_product_v1/f_auto/dpr_3.0/w_300,c_limit/5b3769cc-b1a2-4927-9368-1294727191fa/zoomx-invincible-run-flyknit-2-mens-road-running-shoes-gxNJpn.png',
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            //! SHOE #4.
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Shoe #4"),
                const SizedBox(width: 100),
                Column(
                  children: [
                    const CustomContainer(
                      image:
                          'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/209889d9-4910-4f06-9d07-18afa558b566/air-max-270-mens-shoes-KkLcGR.png',
                    ),
                    Row(
                      children: const [
                        CustomButtons(
                          icon: Icons.star,
                        ),
                        CustomButtons(
                          icon: Icons.favorite,
                        ),
                        CustomButtons(
                          icon: Icons.repeat,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 30,
                    height: 30,
                    margin:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: () {
                        setState(() {
                          color = Colors.red;
                        });
                      },
                      child: null,
                    )),
                Container(
                    width: 30,
                    height: 30,
                    margin:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow),
                      onPressed: () {
                        setState(() {
                          color = Colors.yellow;
                        });
                      },
                      child: null,
                    )),
                Container(
                    width: 30,
                    height: 30,
                    margin:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                      onPressed: () {
                        setState(() {
                          color = Colors.green;
                        });
                      },
                      child: null,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final String image;
  const CustomContainer({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.fill,
        ),
        border: Border.all(
          color: Colors.grey,
          width: 2,
        ),
      ),
    );
  }
}

class CustomButtons extends StatelessWidget {
  final IconData icon;
  const CustomButtons({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.blueAccent,
      ),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
