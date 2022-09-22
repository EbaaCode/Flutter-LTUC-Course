import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink.shade300,
          title: Row(
            children: const [
              Icon(Icons.store),
              SizedBox(width: 20),
              Text("Store Page"),
            ],
          ),
          bottom: TabBar(
            tabs: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.electric_scooter)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.pedal_bike)),
              IconButton( onPressed: () {}, icon: const Icon(Icons.contact_page)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ScooterWidget(),
            BikeWidget(),
            ContactWidget(),
          ],
        ),
      ),
    );
  }
}
