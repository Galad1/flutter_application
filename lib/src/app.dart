import 'package:flutter/material.dart';

import 'screens/choose_workout_screen.dart';
import 'screens/components/appbars.dart';
import 'screens/components/bottom_bar.dart';

class FitnessApp extends StatefulWidget {
  const FitnessApp({Key? key}) : super(key: key);

//This is where the app starts
  @override
  State<FitnessApp> createState() => _FitnessAppState();
}

class _FitnessAppState extends State<FitnessApp> {
  int _selectedIndex = 0;

  //List of the main screens of the application
  static const List<Widget> _widgetOptions = <Widget>[
    ChooseWorkoutScreen(),
    CreateWorkoutScreen(),
    CalendarScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(62, 62, 62, 1.0),
      appBar: buildStandardAppbar(),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar:
          buildBottomNavigationBar(_onItemTapped, _selectedIndex),
    );
  }

  ///This function is triggered when one of the bottom navigation items is tapped
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CreateWorkoutScreen extends StatefulWidget {
  const CreateWorkoutScreen({Key? key}) : super(key: key);

  @override
  _CreateWorkoutScreenState createState() => _CreateWorkoutScreenState();
}

class _CreateWorkoutScreenState extends State<CreateWorkoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
