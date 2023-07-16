// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:task3/constants.dart';



class Field extends StatelessWidget {
  String hintText;
  TextEditingController controller;
  Field({required this.hintText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 20),
        enabledBorder: kBorderDesign,
        focusedBorder: kBorderDesign,
      ),
    );
  }
}
