import 'package:e_learing_course/constants/colors.dart';
import 'package:e_learing_course/models/course.dart';
import 'package:e_learing_course/screens/home/widget/active_course.dart';
import 'package:e_learing_course/screens/home/widget/emoji_text.dart';
import 'package:e_learing_course/screens/home/widget/feature_course.dart';
import 'package:e_learing_course/screens/home/widget/searchbar_input.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:_buildAppBar(),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [EmojiText(),SearchBAR(),
            FeatureCourse(),ActiveCourse()],
        ),
      )

    );
  }
 AppBar _buildAppBar()
 {
   return AppBar(
     backgroundColor: kBackground,
     elevation: 0,
     centerTitle: false,
     title: Padding(
       padding: const EdgeInsets.only(left: 10.0),
       child: Text('Hello Ruize!',
         style: TextStyle(
             color:  kFontLight,
             fontSize: 16.0
         ),),

     ),
     actions: [Stack(children: [
       Container(
         margin: EdgeInsets.only(top: 10,right: 30),
         padding: EdgeInsets.all(8.0),
         decoration: BoxDecoration(border: Border.all(
             color: kFontLight.withOpacity(.3),width: 2
         ),
             borderRadius: BorderRadius.circular(15)

         ),
         child: Image.asset('assets/icons/notification.png',width: 30,),
       ),
       Positioned(
           top:15,right: 40,child: Container(
         width: 8,
         height: 8,
         decoration: BoxDecoration(
             color: kAccent,
             shape: BoxShape.circle
         ),
       ))])],
   );
 }
}
