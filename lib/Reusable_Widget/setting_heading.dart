import 'package:flutter/material.dart';

import '../Constants/constants.dart';
import '../Constants/size_config.dart';
class card_heading extends StatelessWidget {
  String title;
  IconData icon;


  card_heading({required this.title,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            child: Icon(icon,color: secondary,),
          ),
          Horizontal_space(0.03),
          Text('$title',style: headingStyle(),)
        ],
      ),
    );
  }
}
