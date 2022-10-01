import 'package:flutter/material.dart';

answerResponse(bool correct) {
  String title = correct ? "Correct " : "Incorrect";
  IconData icon = correct ? Icons.check : Icons.block;
  return AlertDialog(
    backgroundColor: correct ? Colors.green.shade400 : Colors.redAccent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    content: SizedBox(
      height: 225,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 80,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
        ],
      ),
    ),
  );
}
