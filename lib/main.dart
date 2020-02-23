import 'package:class_schedule_generator/pages/main_menu.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
        title: 'Schedule Generator',
        theme: ThemeData(
            primarySwatch: Colors.blue,
        ),
        home: MainMenu(),
        );
    }
}
