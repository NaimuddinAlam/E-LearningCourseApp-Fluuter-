import 'package:e_learing_course/constants/colors.dart';
import 'package:flutter/material.dart';
class CategoryTitle extends StatelessWidget {

  final String leftText;
  final String rightText;
  CategoryTitle(this.leftText,this.rightText);

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(horizontal: 25),

     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: <Widget>[


         Text(leftText,
         style: TextStyle(fontWeight: FontWeight.bold,
         fontSize: 20,
         color:kFont),),
         Text(rightText,
         style: TextStyle(fontSize: 16.0,color: kFontLight),)
       ],
     ),
    );
  }
}
