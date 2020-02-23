import 'package:class_schedule_generator/pages/course_lists_page.dart';
import 'package:flutter/material.dart';

class CurriculumsModel extends ChangeNotifier {
  List<Curriculum> _curriculums = [];
  int counter = 0;

  List<Curriculum> get curriculums => _curriculums;

  addNewCourseList(name, numberOfCourses) {
    _curriculums
        .add(Curriculum(title: name, numberOfCourses: numberOfCourses));
    notifyListeners();
  }

  incrementCounter() {
    counter++;
    notifyListeners();
  }
}
