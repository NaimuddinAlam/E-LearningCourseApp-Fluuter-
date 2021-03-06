import 'package:e_learing_course/constants/colors.dart';
import 'package:e_learing_course/screens/home/widget/category_title.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
class ActiveCourse extends StatelessWidget {
  const ActiveCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle('Currently active', 'view all'),
          Container(
            margin: EdgeInsets.all(25),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kFontLight.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8)
            ),
            child: Row(
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset('assets/images/progress.png',width: 60,),
                    ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Symetry theroy',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: kFont

                        ),),
                        Text('2 lessons left',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: kFontLight)

                        )],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,
                  bottom: 5),
                  child: CircularPercentIndicator(radius: 30.0,
                    lineWidth: 5.0,
                    progressColor: kAccent,

                    percent: 0.61,
                    center: Text('61%'),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
