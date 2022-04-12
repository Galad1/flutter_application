import 'package:flutter/material.dart';

///Will hold the 2 pages; All Workouts and
Expanded buildPages(List workouts, BuildContext context) {
  return Expanded(
    child: PageView(
      children: [
        Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: workouts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {},
                    leading: Icon(Icons.fitness_center_rounded),
                    title: Text(workouts[index]),
                    subtitle: Text('Rug training'),
                    trailing: Icon(Icons.format_list_numbered),
                  );
                },
              ),
            )
          ],
        )
      ],
    ),
  );
}
