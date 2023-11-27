import 'package:flutter/material.dart';
import 'package:metro_pat/Constants/size_config.dart';
import 'package:metro_pat/Reusable_Widget/notification_card.dart';

import '../../Constants/constants.dart';
class notification_module extends StatefulWidget {
  const notification_module({super.key});

  @override
  State<notification_module> createState() => _notification_moduleState();
}

class _notification_moduleState extends State<notification_module> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        backgroundColor: primary,
        elevation: 0,
        centerTitle: true,
        title: Text('Notification Module',style: TextStyle(
            color: secondary,
            fontSize: heading_size
        ),),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.close,color: secondary,))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: TextFormField(

                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      fillColor: secondary,
                      filled: true,
                      hintText: "Search",
                      hintStyle: TextStyle(
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.w400
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight*0.02,
                ),
                Container(
                  child: Text('Recent',style: TextStyle(
                    color: secondary,
                    fontSize: extra_heading_size
                  ),),
                ),
                Container(
                  width: SizeConfig.screenWidth,
                  height: SizeConfig.screenHeight*0.4,
                  child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                    return notification_card(title: 'Lorum ipsum', text: 'Lorum ipsum, Lorum ipsum, Lorum ipsum');
                  },),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight*0.01,
                ),
                Container(
                  child: Text('This Weak',style: TextStyle(
                      color: secondary,
                      fontSize: extra_heading_size
                  ),),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight*0.01,
                ),
                Container(
                  width: SizeConfig.screenWidth,

                  child: ListView.builder(
                    itemCount: 7,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return notification_card(title: 'Lorum ipsum', text: 'Lorum ipsum, Lorum ipsum, Lorum ipsum');
                    },),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
