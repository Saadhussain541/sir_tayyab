import 'package:flutter/material.dart';

import '../Constants/constants.dart';
import '../Constants/size_config.dart';
class job_card extends StatelessWidget {
  String title;

  job_card({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth*0.8,
      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
      decoration: BoxDecoration(
          color: secondary,
          borderRadius: BorderRadius.circular(5)
      ),
      child: Center(child: Text('$title',style: headingStyle1(),)),
    );
  }
}
