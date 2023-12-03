import 'package:flutter/material.dart';

import '../Constants/constants.dart';
import '../Constants/size_config.dart';
class job_card1 extends StatelessWidget {
  String title1;
  String title2;


  job_card1({required this.title1,required this.title2});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: SizeConfig.screenHeight*0.01),

      padding: EdgeInsets.only(
          right: 4,
          left: 10,
          top: 10,
          bottom: 10
      ),
      decoration: BoxDecoration(
          color: secondary,
          borderRadius: BorderRadius.circular(5)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  child: Text('$title1',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                  ),),
                ),
                Horizontal_space(0.03),
                Container(
                  child: Text('$title2',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                  ),),
                ),
              ],
            ),
          ),
          Container(
            child: Icon(Icons.chevron_right),
          )
        ],
      ),
    );
  }
}
