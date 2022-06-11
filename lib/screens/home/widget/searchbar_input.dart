import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
class SearchBAR extends StatelessWidget {
  const SearchBAR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(25),
            decoration: BoxDecoration(
              border: Border.all(color: kFontLight.withOpacity(0.3),width: 2),
              borderRadius: BorderRadius.circular(20)
            ),
            child: TextField(
              cursorColor: kFontLight,
              decoration: InputDecoration(
                fillColor: kFontLight.withOpacity(0.1),
                filled: true,
                contentPadding: EdgeInsets.all(18),
                border: InputBorder.none,
                hintText: 'Search for history.classes....',
                hintStyle: TextStyle(color: kFontLight)

              ),
            ),
          ),
          Positioned(
            right: 45,
          top: 35,
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: kAccent,
                  borderRadius: BorderRadius.circular(10)
                ),

                child: Image.asset('assets/icons/search.png',
                width: 20,),
              ))
        ],
      ),
    );
  }
}
