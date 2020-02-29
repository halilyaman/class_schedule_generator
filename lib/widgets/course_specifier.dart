import 'package:class_schedule_generator/models/course_time_model.dart';
import 'package:class_schedule_generator/widgets/course_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CourseSpecifier extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CourseTimeModel>(
      builder: (context, courseTimeModel, child) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.black38,
        ),
        height: 300.0,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  left: 30.0, right: 30.0, top: 10.0, bottom: 20.0),
              child: TextFormField(
                decoration: InputDecoration(labelText: "Course Code"),
              ),
            ),
            Text("Course hour format: hh:mm-hh:mm (Please )"),
            Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, bottom: 8.0, left: 30.0, right: 30.0),
              child: CourseTimePicker(),
            )
          ],
        ),
      ),
    );
  }
}
