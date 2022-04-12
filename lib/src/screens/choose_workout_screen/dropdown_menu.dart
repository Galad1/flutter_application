import 'package:flutter/material.dart';

Container buildDropDownMenu(
    String? dropdownValue, void onValueChanged(dropDownValue)) {
  return Container(
    color: Colors.white,
    child: DropdownButton(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      isExpanded: true,
      isDense: true,
      hint: Text('Filter workouts'),
      onChanged: (String? newValue) {
        onValueChanged(newValue);
      },
      items: <String>['One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    ),
  );
}
