import 'package:flutter/material.dart';

class CourseStructureModel extends ChangeNotifier {
  List<CourseStructure> courseStructures = [];
  int _currentCourseNumber;

  int get currentCourseNumber => _currentCourseNumber;

  updateCurrentCourseNumber(int newNumber) {
    if (newNumber <= 0 || newNumber > 15)
      _currentCourseNumber = null;
    else 
      _currentCourseNumber = newNumber;
    notifyListeners();
  }

  addNewCourseStructure(String name, int numberOfCourses) {
    courseStructures.add(CourseStructure(name, numberOfCourses));
    notifyListeners();
  }
  
}

class CourseStructure {
  String _name;
  int _numberOfCourses;

  CourseStructure(name, numberOfCourses) {
    _name = name;
    _numberOfCourses = numberOfCourses;
  }

  String get name => _name;
  int get numberOfCourses => _numberOfCourses;
}