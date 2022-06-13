import 'package:e_learing_course/constants/colors.dart';
import 'package:e_learing_course/models/module.dart';
import 'package:flutter/material.dart';

import 'coursemodeule.dart';

class CourseProgress extends StatelessWidget {
 final modulesList=Module.generateModule();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),

      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('The progress',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: kFont
              ),),
              Row(
                children: [
                  Image.asset('assets/icons/grid.png',
                  width: 25,),
                  SizedBox(width: 25,),
                  Image.asset('assets/icons/list.png',width: 25,)
                ],
              ),

            ],
          ),
          SizedBox(height: 20),
          ...modulesList.map((e) => CourseModule(e)).toList()
        ],
      ),
    );
  }
}
