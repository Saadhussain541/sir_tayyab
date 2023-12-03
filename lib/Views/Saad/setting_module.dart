import 'package:flutter/material.dart';
import 'package:metro_pat/Constants/size_config.dart';
import 'package:metro_pat/Reusable_Widget/notification_switch.dart';
import 'package:metro_pat/Reusable_Widget/setting_card.dart';
import 'package:metro_pat/Reusable_Widget/setting_heading.dart';

import '../../Constants/constants.dart';
class setting_module extends StatefulWidget {
  const setting_module({super.key});

  @override
  State<setting_module> createState() => _setting_moduleState();
}

class _setting_moduleState extends State<setting_module> {
  bool isSwitched=false;
  bool isSwitched1=false;
  bool isExpanded=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        backgroundColor: primary,
        elevation: 0,
        centerTitle: true,
        title: Text('Settings Module',style: TextStyle(
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
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Vertical_space(0.03),
              Text('Settings',style:headingStyle1(color1: secondary),),
              Vertical_space(0.02),
              card_heading(
                title: "Account",
                icon: Icons.person,
              ),
              Container(
                  width: double.infinity,
                  child: Divider(
                    thickness: 0.2,
                  )),
              Vertical_space(0.02),
              Setting_card(title: 'Edit Profile', icon: Icons.chevron_right),
              Vertical_space(0.04),
              Setting_card(title: 'Privacy', icon: Icons.chevron_right),
              Vertical_space(0.03),
              card_heading(
                title: "Notification",
                icon: Icons.notifications,
              ),
              Container(
                  width: double.infinity,
                  child: Divider(
                    thickness: 0.2,
                  )),
              Vertical_space(0.01),
              Notification_switch(title: 'Notifcations', switch1: isSwitched),
              Vertical_space(0.02),
              Notification_switch(title: 'App Notifcations', switch1: isSwitched1),
              Vertical_space(0.02),
              card_heading(
                title: "More",
                icon: Icons.more_horiz,
              ),
              Container(
                  width: double.infinity,
                  child: Divider(
                    thickness: 0.2,
                  )),
              ExpansionTile(
                iconColor: secondary,
                collapsedIconColor: secondary,
                title: Text('Language',style: headingStyle(),),
                children: [
                  ListTile(
                    title: Text('English',style: TextStyle(
                      color: secondary
                    ),),
                  ),
                  ListTile(
                    title: Text('Urdu',style: TextStyle(
                        color: secondary
                    ),),
                  ),
                ],
              ),
              ExpansionTile(
                iconColor: secondary,
                collapsedIconColor: secondary,
                  trailing: isExpanded ? Icon(Icons.arrow_drop_down) : Icon(Icons.chevron_right),
                onExpansionChanged: (bool expanded) {
                  setState(() {
                    isExpanded = expanded;
                  });
                },
        
                title: Text('Country',style: headingStyle(),),
                children: [
                  ListTile(
                    title: Text('English',style: TextStyle(
                        color: secondary
                    ),),
                  ),
                  ListTile(
                    title: Text('Urdu',style: TextStyle(
                        color: secondary
                    ),),
                  ),
                ],
              ),
              Container(
                child: Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(child: Icon(Icons.logout,color: secondary,size: 30,),),
                      SizedBox(width: 3,),
                      Container(child: Text('Logout',style: headingStyle1(color1: secondary),),),
                      
                    ],
                  ),
                ),
              ),
              Vertical_space(0.02)
        
              
        
            ],
          ),
        ),
      ),
    );
  }
}
