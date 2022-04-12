import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///Creates 2 buttons, used to switch between 'Alle Workouts' en 'Eigen Workouts'
Container buildWorkoutButtons(
    int groupValue, void onButtonPressed(groupValue)) {
  return Container(
      color: Color.fromRGBO(130, 135, 134, 1.0),
      //width: double.infinity,
      height: 90.0,
      child: CupertinoSegmentedControl(
        groupValue: groupValue,
        children: {
          0: _workoutButtonContents('Alle workouts'),
          1: _workoutButtonContents('Eigen workouts')
        },
        onValueChanged: (value) => {
          onButtonPressed(value),
        },
        selectedColor: Colors.deepPurpleAccent,
      ));
}

///Returns the content what belongs to the button. Content is shown in the button
Container _workoutButtonContents(String title) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
    width: double.infinity,
    child: Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black,
        fontSize: 22,
      ),
    ),
  );
}
