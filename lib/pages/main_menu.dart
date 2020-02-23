import 'package:class_schedule_generator/pages/course_lists_page.dart';
import 'package:flutter/material.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Container(
            color: Colors.blueGrey,
            child: Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                        onTap: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CourseListsPage()))
                            },
                        child: Container(
                            width: 300.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.pink,
                            ),
                            child: Center(
                                child: const Text(
                            "Course Lists",
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
                            color: Colors.green,
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
                    Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: GestureDetector(
                        onTap: () => {},
                        child: Container(
                        width: 300.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.black,
                        ),
                        child: Center(
                            child: const Text(
                            "Generate Schedule",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold),
                            ),
                        ),
                        ),
                    ),
                    )
                ],
                ),
            ),
            ),
        );
    }
}