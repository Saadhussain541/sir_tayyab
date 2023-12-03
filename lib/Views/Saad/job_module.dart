import 'package:flutter/material.dart';
import 'package:metro_pat/Constants/size_config.dart';
import 'package:metro_pat/Reusable_Widget/job_card.dart';
import 'package:metro_pat/Reusable_Widget/job_card2.dart';
import 'package:metro_pat/Reusable_Widget/search_input.dart';

import '../../Constants/constants.dart';
class job_module extends StatefulWidget {
  const job_module({super.key});

  @override
  State<job_module> createState() => _job_moduleState();
}

class _job_moduleState extends State<job_module> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        backgroundColor: primary,
        elevation: 0,
        centerTitle: true,
        title: Text('Jobs Module',style: TextStyle(
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
          physics: BouncingScrollPhysics(),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Vertical_space(0.01),
                Container(
                  child: search_field(),
                ),
                Vertical_space(0.05),
                job_card(title: 'Date'),
                Vertical_space(0.04),
                Container(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                    return job_card1(title1: 'Lorem text', title2: 'Job${index+1}');
                  },),
                ),
                Vertical_space(0.03),
                job_card(title: 'Date'),
                Vertical_space(0.04),
                Container(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return job_card1(title1: 'Lorem text', title2: 'Job${index+1}');
                    },),
                ),
                Vertical_space(0.03),
                job_card(title: 'Date'),
                Vertical_space(0.04),
                Container(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return job_card1(title1: 'Lorem text', title2: 'Job${index+1}');
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
