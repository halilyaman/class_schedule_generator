import 'package:class_schedule_generator/models/curriculums_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CourseListsPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Consumer<CurriculumsModel>(
      builder: (context, curriculums, child) => Scaffold(
        appBar: AppBar(
            title: const Text("Curriculums"),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
            )),
        body: ListView(children: _buildCurriculums(curriculums)),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add_box),
            onPressed: () => _takeCourseListInfo(context, curriculums)),
      ),
    );
  }

  List<Widget> _buildCurriculums(curriculums) {
    List<Widget> curriculumWidgets = [];
    var courseLists = curriculums.curriculums;
    for (int i = 0; i < courseLists.length; i++) {
      curriculumWidgets.add(Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.brown),
          height: 60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("Title: ${courseLists[i].title}"),
              Text("Number Of Courses: ${courseLists[i].numberOfCourses}")
            ],
          ),
        ),
      ));
    }
    return curriculumWidgets;
  }

  _takeCourseListInfo(context, curriculums) {
    final listNameController = TextEditingController();
    final courseNumberController = TextEditingController();
    return showDialog(
        context: context,
        builder: (context) => Form(
              key: _formKey,
              child: AlertDialog(
                title: Text("Curriculum Information"),
                content: Container(
                  height: 200.0,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        controller: listNameController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(labelText: "Title"),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please enter the title.";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        controller: courseNumberController,
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(labelText: "Number Of Courses"),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please enter the number of courses.";
                          } else if (int.parse(value) < 0 ||
                              int.parse(value) > 15) {
                            return "Number of courses must be between 1-15";
                          }
                          return null;
                        },
                      )
                    ],
                  ),
                ),
                actions: <Widget>[
                  MaterialButton(
                    child: Text("Submit"),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        curriculums.addNewCourseList(listNameController.text,
                            int.parse(courseNumberController.text));
                        Navigator.of(context).pop();
                        _formKey.currentState.reset();
                      }
                    },
                  ),
                ],
              ),
            ));
  }
}

class Curriculum {
  String title;
  int numberOfCourses;

  Curriculum({this.title, this.numberOfCourses});
}
