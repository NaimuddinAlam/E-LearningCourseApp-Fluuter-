import 'package:e_learing_course/models/course.dart';
import 'package:e_learing_course/screens/home/widget/category_title.dart';
import 'package:e_learing_course/screens/home/widget/course_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class FeatureCourse extends StatelessWidget {
 final courselist=Course.generateCourses();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle('Top of the week', 'view all'),
          Container(
            height: 300,
            padding: EdgeInsets.all(25),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: courselist.length,
                itemBuilder: (context,index) =>
            CourseItem(courselist[index]),
              separatorBuilder: ( context,  index) => SizedBox(width: 15,)),
          )
        ],
      ),
    );
  }
}
