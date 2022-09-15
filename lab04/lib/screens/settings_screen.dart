import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    const sidePadding = EdgeInsets.symmetric(horizontal: 25);
    bool _value = false;
    int val = -1;
    String dropdownValue = 'Item 1';
    var adultsCount = [
      '1 Adult',
      '2 Adults',
      '3 Adults',
    ];
    bool pets = false;
    bool clothing = false;
    bool electronics = false;
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
              "User Settings",
              style: TextStyle(
                  fontSize: 45,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 50),
          const Text("How many adults:"),
          DropdownButton(
            items: adultsCount.map(
              (String items) {
                return DropdownMenuItem(
                  value: dropdownValue,
                  child: Text(items),
                );
              },
            ).toList(),
            onChanged: (String? newValue) {
              setState(
                () {
                  dropdownValue = newValue!;
                },
              );
            },
          ),
          SizedBox(height: 50),
          Text("Select your class:"),
          RadioListTile(
            value: 1,
            groupValue: val,
            onChanged: (_value) {
              setState(() {
                val = _value!;
              });
            },
            title: Text("Economy"),
            subtitle: Text("200\$ per person."),
            secondary: Icon(Icons.person),
            selected: _value,
          ),
          RadioListTile(
            value: 1,
            groupValue: val,
            onChanged: (_value) {
              setState(() {
                val = _value!;
              });
            },
            title: Text("Business"),
            subtitle: Text("500\$ per person."),
            secondary: Icon(Icons.person),
            selected: _value,
          ),
          SizedBox(height: 50),
          Text("Select items you will bring along:"),
          CheckboxListTile(
            title: const Text('Pets'),
            value: pets,
            onChanged: (bool? value) {
              setState(() {
                pets = value!;
              });
            },
          ),
          CheckboxListTile(
            title: const Text('Clothing'),
            value: clothing,
            onChanged: (bool? value) {
              setState(() {
                clothing = value!;
              });
            },
          ),
          CheckboxListTile(
            title: const Text('Electronics'),
            value: electronics,
            onChanged: (bool? value) {
              setState(() {
                electronics = value!;
              });
            },
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
