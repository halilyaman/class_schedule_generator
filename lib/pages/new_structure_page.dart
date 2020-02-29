import 'package:class_schedule_generator/models/course_structure_model.dart';
import 'package:class_schedule_generator/models/course_time_model.dart';
import 'package:class_schedule_generator/widgets/course_specifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewStructurePage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _courseFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var courseNumberController = TextEditingController();
    var courseStructureNameController = TextEditingController();
    return Consumer2<CourseStructureModel, CourseTimeModel>(
      builder: (context, courseStructureModel, courseTimeModel, child) =>
          Scaffold(
        appBar: AppBar(
          title: Text("New Course Structure"),
        ),
        body: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    top: 20.0, bottom: 10.0, left: 30.0, right: 30.0),
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Please enter the name of course structure.\n(e.g., 2017-2018 Fall)";
                    }
                    return null;
                  },
                  decoration:
                      InputDecoration(labelText: "Course Structure Name"),
                  keyboardType: TextInputType.text,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, bottom: 20.0, left: 30.0, right: 30.0),
                child: TextFormField(
                  controller: courseNumberController,
                  decoration: InputDecoration(labelText: "Number Of Courses"),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Please enter the number of courses that you will enroll.";
                    }
                    if (int.parse(value) <= 0 || int.parse(value) > 15) {
                      return "Must be between 1-15";
                    }
                    return null;
                  },
                ),
              ),
              RaisedButton(
                color: Colors.indigo[100],
                child: Text("Add Fields"),
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    courseStructureModel.updateCurrentCourseNumber(
                        int.parse(courseNumberController.text));
                  }
                },
              ),
              courseStructureModel.currentCourseNumber == null
                  ? Container()
                  : Form(
                    key: _courseFormKey,
                      child: Expanded(
                        child: ListView(
                          children: _buildCourseSpecifiers(
                              context, courseStructureModel.currentCourseNumber),
                        ),
                      ),
                  )
            ],
          ),
        ),
        floatingActionButton: RaisedButton.icon(
          icon: Icon(Icons.save),
          label: Text("Save Changes"),
          onPressed: () {
            if (_formKey.currentState.validate()) {
              courseStructureModel.addNewCourseStructure(
                  courseStructureNameController.text,
                  int.parse(courseNumberController.text));
            }
          },
        ),
      ),
    );
  }

  List<Widget> _buildCourseSpecifiers(context, int currentNumber) {
    List<Widget> courseSpecifier = [];

    for (int i = 0; i < currentNumber; i++) {
      courseSpecifier.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: CourseSpecifier(),
      ));
    }
    return courseSpecifier;
  }

  Future<TimeOfDay> _getTime(context) {
    return showTimePicker(context: context, initialTime: TimeOfDay.now());
  }
}
