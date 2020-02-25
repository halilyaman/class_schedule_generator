import 'package:class_schedule_generator/models/course_structure_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<CourseStructureModel>(
        builder:(context, courseLists, child) => Container(
          color: Colors.blueGrey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      onTap: () => 
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => null)),
                      child: Container(
                        width: 300.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.brown,
                        ),
                        child: Center(
                            child: const Text(
                          "Course Structures",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold),
                        )),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      onTap: () => {},
                      child: Container(
                        width: 300.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.blue,
                        ),
                        child: Center(
                            child: const Text(
                          "Schedules",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold),
                        )),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      onTap: () => {},
                      child: Container(
                        width: 300.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.pink,
                        ),
                        child: Center(
                            child: const Text(
                          "Favorites",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold),
                        )),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
