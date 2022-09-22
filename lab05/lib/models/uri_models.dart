import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri facebookUrl = Uri.parse('https://www.facebook.com');
final Uri instagramUrl = Uri.parse('https://www.instagram.com/');

Future<void> facebookFunction() async {
  if (!await launchUrl(facebookUrl)) {
    throw 'Could not launch $facebookUrl';
  }
}

Future<void> instagramFunction() async {
  if (!await launchUrl(instagramUrl)) {
    throw 'Could not launch $instagramUrl';
  }
}

class URlClass extends StatelessWidget {
  String? platformTitle;
  String? platformSubTitle;
  IconData? platformIcon;
  Function()? function;

  URlClass({
    this.function,
    this.platformIcon,
    this.platformSubTitle,
    this.platformTitle
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Column(children: [
        ListTile(
          title: Text("$platformTitle"),
          subtitle: Text("$platformSubTitle"),
          leading: Icon(platformIcon),
        ),
      ]),
    );
  }
}
