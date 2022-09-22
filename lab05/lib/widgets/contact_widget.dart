import 'package:flutter/material.dart';
import 'package:lab05/models/models.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 500,
      child: Column(
        children: [
          URlClass(
            function: facebookFunction,
            platformIcon: Icons.facebook,
            platformSubTitle: "Join our facebook page!",
            platformTitle: "Facebook",
          ),
          URlClass(
            function: instagramFunction,
            platformIcon: Icons.photo,
            platformSubTitle: "join our instagram page",
            platformTitle: "Instagram",
          ),
        ],
      ),
    );
  }
}
