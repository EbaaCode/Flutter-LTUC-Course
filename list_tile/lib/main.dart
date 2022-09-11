import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List shoeName = [
    "Nike Blazer Mid '77 Vintage",
    "Air Jordan 12 Retro",
    "Nike Air Max SC",
    "ULTRABOOST 19.5 DNA SHOES",
    "ULTRABOOST 22 SHOES"
  ];
  List shoeImage = [
    "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/389b709e-5102-4e55-aa5d-07099b500831/blazer-mid-77-vintage-mens-shoes-nw30B2.png",
    "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/bbe56b5c-07ed-4ce3-a5b5-e6d5c8f68a9b/air-jordan-12-retro-shoes-kcMcpK.png",
    "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/51f1333a-e008-4da0-ba13-8dc93c983512/air-max-sc-womens-shoes-CwMCK7.png",
    "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/b2d243f16c384ba0a70dae37016d6a45_9366/Ultraboost_19.5_DNA_Shoes_Black_GW8773_01_standard.jpg",
    "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/3aab129b45f943cea5ceae92012f23b3_9366/Ultraboost_22_Shoes_Grey_GX9158_01_standard.jpg"
  ];
  List shoeBrand = ["Nike", "Nike", "Nike", "adidas", "adidas"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
            body: ListView(
              children: [
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int i) {
                      return Container(
                          color: Colors.redAccent,
                          padding: EdgeInsets.all(20),
                          child: ListTile(
                            isThreeLine: true,
                            trailing: Icon(Icons.star_outline),
                            title: Text("${shoeName[i]}"),
                            subtitle: Text("${shoeBrand[i]}"),
                            leading:
                                Image(image: NetworkImage("${shoeImage[i]}")),
                          ));
                    })
              ],
            )));
  }
}
