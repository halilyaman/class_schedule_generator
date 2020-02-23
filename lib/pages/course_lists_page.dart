import 'package:flutter/material.dart';

class CourseListsPage extends StatefulWidget {
	@override
	_CourseListsPageState createState() => _CourseListsPageState();
}

class _CourseListsPageState extends State<CourseListsPage> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: const Text("Course Lists"),
				centerTitle: true,
				leading: IconButton(
				icon: Icon(Icons.arrow_back),
				onPressed: () => Navigator.pop(context),
				)),
			body: ListView(children: <Widget>[]),
		);
	}
}
