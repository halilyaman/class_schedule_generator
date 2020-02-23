import 'package:class_schedule_generator/models/curriculums_model.dart';
import 'package:class_schedule_generator/pages/main_menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CurriculumsModel(),
      child: MaterialApp(
        title: 'Schedule Generator',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MainMenu(),
      ),
    );
  }
}
