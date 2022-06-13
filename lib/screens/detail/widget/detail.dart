import 'package:e_learing_course/models/course.dart';
import 'package:e_learing_course/screens/detail/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'course_description.dart';
import 'course_progress.dart';
class DetailPage extends StatelessWidget {
  final Course course;


  DetailPage(this.course);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
        children: [CustomAppBar(course),CourseDescription(course),CourseProgress()],

      )
      ),
    );
  }
}
