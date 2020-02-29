import 'package:class_schedule_generator/models/course_structure_model.dart';
import 'package:class_schedule_generator/pages/new_structure_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CourseStructurePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CourseStructureModel>(
      builder: (context, courseStructure, child) => Scaffold(
        appBar: AppBar(
          title: Text("Course Structures"),
        ),
        body: courseStructure.courseStructures.length == 0
            ? Center(
                child: Text(
                    "Empty! Please create a new course structure."))
            : null,
        floatingActionButton: GestureDetector(
              child: Container(
                width: 160,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0
                  ),
                  color: Colors.blue[200],
                ),
                child: Center(child: Text("New Course Structure", style: TextStyle(
                  fontWeight: FontWeight.bold
                ),))
              ),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => NewStructurePage()
                )
              ),
            ),
      ),
    );
  }
}
