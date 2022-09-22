import 'package:flutter/material.dart';
import 'package:lab05/models/models.dart';

class ScooterWidget extends StatelessWidget {
  const ScooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: scooters.length,
          itemBuilder: (BuildContext context, int index) {
            Scooter scooter = scooters[index];
            return Column(
              children: [
                Image(image: NetworkImage(scooter.image)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(scooter.name, overflow: TextOverflow.ellipsis),
                    Text(scooter.price),
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
