import 'package:flutter/material.dart';
import 'package:metro_pat/Constants/size_config.dart';

import '../../Constants/constants.dart';
class job_discription extends StatefulWidget {
  const job_discription({super.key});

  @override
  State<job_discription> createState() => _job_discriptionState();
}

class _job_discriptionState extends State<job_discription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        backgroundColor: primary,
        elevation: 0,
        centerTitle: true,
        title: Text('Job Description',style: TextStyle(
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
                Vertical_space(0.02),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),

                            color: secondary
                        ),
                        width: SizeConfig.screenWidth*0.3,
                        height: SizeConfig.screenHeight*0.04,
                        child: Center(child: Text('Job1',style: headingStyle1(),)),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: secondary,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        width: SizeConfig.screenWidth*0.2,
                        height: SizeConfig.screenHeight*0.03,
                        child: Center(
                          child: Text('START',style: TextStyle(
                            fontWeight: FontWeight.w700
                          ),),
                        ),
                      )
                    ],
                  ),
                ),
                Vertical_space(0.02),
                Container(
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Text('Time',style: headingStyle(),),
                          Container(
                            decoration: BoxDecoration(
                                color: secondary,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            width: SizeConfig.screenWidth*0.2,
                            height: SizeConfig.screenHeight*0.03,
                            child: Center(
                              child: Text('8 Hour',style: TextStyle(
                                  fontWeight: FontWeight.w700
                              ),),
                            ),
                          )
                        ],
                      )

                    ],
                  )
                ),
                Vertical_space(0.02),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    color: secondary,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Lorum ipsum',style: headingStyle(color1: primary,fontWeight1: FontWeight.w600),),
                      Horizontal_space(0.04),
                      Text('JOB 1',style: headingStyle(color1: primary,fontWeight1: FontWeight.w600),)
                    ],
                  ),
                ),
                Vertical_space(0.02),
                Text('Job description ',style: headingStyle1(color1: secondary),),
                Vertical_space(0.005),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                  decoration: BoxDecoration(
                    color: secondary,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem Ipsum passage is,'),

                ),
                Vertical_space(0.02),
                Text('Address ',style: headingStyle1(color1: secondary),),
                Vertical_space(0.005),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                  decoration: BoxDecoration(
                      color: secondary,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
                ),
                Vertical_space(0.02),
                Text('Contact',style: headingStyle1(color1: secondary),),
                Vertical_space(0.005),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: secondary
                  ),
                  child: Column(
                    children: [
                      Text('XXXXXXXXXXXXXX',style: headingStyle1(),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Icon(Icons.message),
                          ),
                          Container(
                            child: Icon(Icons.whatshot),
                          ),
                          Container(
                            child: Icon(Icons.phone),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Vertical_space(0.02),
                Text('Geo Location',style: headingStyle1(color1: secondary),),
                Vertical_space(0.005),
                Container(
                  width: double.infinity,
                  height: SizeConfig.screenHeight*0.15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('https://staticmapmaker.com/img/google-placeholder.png')
                    )
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
