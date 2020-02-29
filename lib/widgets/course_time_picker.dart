import 'package:flutter/material.dart';

final List<String> titles = [
  "Hours",
  "Sunday",
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
  "Saturday"
];

class CourseTimePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[900],
      height: 170.0,
      child: SingleChildScrollView (
        child: Table(
          border: TableBorder.all(),
          children:  _generateDaysRow(),
        ),
      ),
    );
  }

  List<TableRow> _generateDaysRow() {
    List<TableRow> dayColumns = [];

    dayColumns = titles.map((day) => TableRow(
      children: [
        Container(
          height: 50,
          child: Center(child: Text(day)),
        ),
        Container(
          height: 50,
          child: TextFormField(
            
          )
        )
      ]
    )).toList();

    return dayColumns;
  }
}
