import 'package:flutter/material.dart';
import 'package:lab05/models/models.dart';

class BikeWidget extends StatelessWidget {
  const BikeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: bikes.length,
          itemBuilder: (BuildContext context, int index) {
            Bike bike = bikes[index];
            return Column(
              children: [
                Image(image: NetworkImage(bike.image)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(bike.name),
                    Text(bike.price),
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
