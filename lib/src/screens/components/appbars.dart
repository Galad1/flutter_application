import 'package:flutter/material.dart';

AppBar buildStandardAppbar() {
  return AppBar(
    title: Text(
      'Fitness App',
      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
    ),
    leading: Icon(
      Icons.fitness_center,
      color: Color.fromARGB(255, 0, 0, 0),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.menu),
        tooltip: 'Instellingen',
        onPressed: () {
          // handle the press
        },
      ),
    ],
    centerTitle: false,
    backgroundColor: Color.fromARGB(255, 255, 255, 255),
  );
}
