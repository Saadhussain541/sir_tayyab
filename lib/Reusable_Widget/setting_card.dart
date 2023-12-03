import 'package:flutter/material.dart';

import '../Constants/constants.dart';
import '../Constants/size_config.dart';
class Setting_card extends StatelessWidget {
  String title;
  IconData icon;


  Setting_card({required this.title,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text('$title',style: headingStyle(),),
          ),
          Container(
            child: Icon(icon,color: secondary,),
          )
        ],
      ),
    );
  }
}
