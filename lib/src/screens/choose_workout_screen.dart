import 'package:flutter/material.dart';
import 'package:flutter_application/src/screens/choose_workout_screen/pages.dart';

import 'choose_workout_screen/dropdown_menu.dart';
import 'choose_workout_screen/buttons.dart';

class ChooseWorkoutScreen extends StatefulWidget {
  const ChooseWorkoutScreen({Key? key}) : super(key: key);

  @override
  State<ChooseWorkoutScreen> createState() => _ChooseWorkoutScreenState();
}

class _ChooseWorkoutScreenState extends State<ChooseWorkoutScreen> {
  List workouts = [
    'Workout 1',
    'Workout 2',
    'Workout 3',
    'Workout 4',
    'Workout 5',
    'Workout 6',
    'Workout 7',
    'Workout 8',
    'Workout 9'
  ];
  //holds the value of the dropdown menu
  String? _dropdownValue;

  //holds the index of the button
  int _groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(62, 62, 62, 1.0),
      body: Container(
        height: 610.0,
        width: 350,
        margin: EdgeInsets.symmetric(vertical: 80, horizontal: 30.0),
        decoration: BoxDecoration(
            color: Color.fromRGBO(130, 135, 134, 1.0),
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            buildWorkoutButtons(_groupValue, onButtonTapped),
            buildDropDownMenu(_dropdownValue, onValueChanged),
            buildPages(workouts, context),
          ],
        ),
      ),
    );
  }

  /// Triggered when one of the buttons is tapped
  void onButtonTapped(groupValue) {
    setState(() {
      _groupValue = groupValue;
    });
  }

  ///Triggered when value of the dropdown menu is changed
  void onValueChanged(dropDownValue) {
    setState(() {
      _dropdownValue = dropDownValue;
    });
  }
}
