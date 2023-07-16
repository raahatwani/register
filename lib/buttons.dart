// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String buttonText;
  Color color = Colors.orange;
  VoidCallback action;

  Button({required this.buttonText, required this.action});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: color),
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 30),
        ),
        onPressed: action,
      ),
    );
  }
}
