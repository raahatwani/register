import 'package:flutter/material.dart';
import 'buttons.dart';
import 'SecondPage.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
          Button(
            buttonText: 'Login',
            action: () {},
          ),
          SizedBox(
            height: 40,
          ),
          Button(
            buttonText: 'Register',
            action: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return SecondPage();
              }));
            },
          )
        ]))));
  }
}
