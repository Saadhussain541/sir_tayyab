import 'package:flutter/material.dart';
import 'package:metro_pat/Constants/size_config.dart';
import 'package:metro_pat/Reusable_Widget/search_input.dart';
import 'package:metro_pat/Reusable_Widget/sevice_card.dart';

import '../../Constants/constants.dart';
class service_history extends StatefulWidget {
  const service_history({super.key});

  @override
  State<service_history> createState() => _service_historyState();
}

class _service_historyState extends State<service_history> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        backgroundColor: primary,
        elevation: 0,
        centerTitle: true,
        title: Text('Service History',style: TextStyle(
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
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: search_field(),
                ),
                Vertical_space(0.01),
                Text('Today',style: headingStyle1(color1: secondary),),
                Vertical_space(0.01),
                Container(
                  // height: SizeConfig.screenHeight*0.2,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                    return service_card();
                  },),
                ),
                Vertical_space(0.01),
                Text('Date',style: headingStyle1(color1: secondary),),
                Vertical_space(0.01),
                Container(
                  // height: SizeConfig.screenHeight*0.2,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return service_card();
                    },),
                ),
                Text('Date',style: headingStyle1(color1: secondary),),
                Vertical_space(0.01),
                Container(
                  // height: SizeConfig.screenHeight*0.2,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return service_card();
                    },),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
