import 'package:flutter/material.dart';

BottomNavigationBar buildBottomNavigationBar(
    void onItemTapped(int i), int selectedIndex) {
  return BottomNavigationBar(
    items: [
      BottomNavigationBarItem(
          icon: Icon(Icons.fitness_center_sharp), label: 'Kies Workouts'),
          
      BottomNavigationBarItem(
          icon: Icon(Icons.fitness_center_sharp), label: 'Maak Workouts'),
      BottomNavigationBarItem(
        icon: Icon(Icons.calendar_view_week),
        label: 'Agenda',
      ),
    ],
    currentIndex: selectedIndex,
    onTap: onItemTapped,
  );
}
