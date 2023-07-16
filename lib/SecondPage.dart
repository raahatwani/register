import 'package:flutter/material.dart';
import 'package:task3/textField.dart';


var i = 1;
bool swap = false;
bool show = true;

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController designationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: show
                ? Container(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage('images/$i.png'),
                      ),
                      !swap
                          ? IconButton(
                              icon: Icon(Icons.arrow_circle_right_outlined),
                              color: Colors.orange,
                              iconSize: 60,
                              onPressed: () {
                                if (i <= 3) {
                                  i = i + 1;
                                }
                                i > 2 ? swap = true : null;
                                setState(() {});
                              },
                            )
                          : IconButton(
                              icon: Icon(Icons.arrow_circle_left_outlined),
                              color: Colors.orange,
                              iconSize: 60,
                              onPressed: () {
                                if (i >= 2) {
                                  i = i - 1;
                                }
                                i == 1 ? swap = false : null;
                                setState(() {});
                              },
                            ),
                      Field(
                        hintText: 'Enter Name',
                        controller: nameController,
                      ),
                      SizedBox(height: 20),
                      Field(
                          hintText: 'Enter Email', controller: emailController),
                      SizedBox(height: 20),
                      Field(
                          hintText: 'Enter Contact no',
                          controller: contactController),
                      SizedBox(height: 20),
                      Field(
                          hintText: 'Enter Designation',
                          controller: designationController),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          child: Text('Submit'),
                          onPressed: () {
                            show = false;
                            setState(() {});
                          }),
                    ],
                  ))
                : Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 170,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('images/$i.png'),
                            radius: 150,
                          ),
                        ),
                        Card(
                          color: Colors.orange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80)),
                          margin: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 25.0),
                          child: ListTile(
                            title: Text(
                              '${nameController.text.trim()}',
                              style: TextStyle(
                                  fontSize: 30.0, color: Colors.teal.shade900),
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.orange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80)),
                          margin: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 25.0),
                          child: ListTile(
                            title: Text(
                              '${emailController.text.trim()}',
                              style: TextStyle(
                                  fontSize: 30.0, color: Colors.teal.shade900),
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.orange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80)),
                          margin: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 25.0),
                          child: ListTile(
                            title: Text(
                              '${contactController.text.trim()}',
                              style: TextStyle(
                                  fontSize: 30.0, color: Colors.teal.shade900),
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.orange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80)),
                          margin: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 25.0),
                          child: ListTile(
                            title: Text(
                              '${designationController.text.trim()}',
                              style: TextStyle(
                                  fontSize: 30.0, color: Colors.teal.shade900),
                            ),
                          ),
                        )
                      ],
                    ),
                  )));
  }
}
