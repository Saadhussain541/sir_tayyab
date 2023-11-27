import 'package:flutter/material.dart';

import '../Constants/constants.dart';
import '../Constants/size_config.dart';
class notification_card extends StatelessWidget {
  String title;
  String text;


  notification_card({required this.title,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(vertical: 30,horizontal: 10),
      width: SizeConfig.screenWidth*1,
      decoration: BoxDecoration(
          color: secondary,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,

        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('$title',style: headingStyle1()),
                Text('$text')
              ],
            ),
          ),
          Container(
            child: Icon(
                Icons.chevron_right
            ),
          )
        ],
      ),
    );
  }
}
