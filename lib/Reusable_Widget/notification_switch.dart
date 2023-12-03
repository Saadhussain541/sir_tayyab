import 'package:flutter/material.dart';

import '../Constants/size_config.dart';
class Notification_switch extends StatefulWidget {
  bool switch1;
  String title;


  Notification_switch({required this.title,required this.switch1});

  @override
  State<Notification_switch> createState() => _Notification_switchState(title: title,switch1: switch1);
}

class _Notification_switchState extends State<Notification_switch> {
  bool switch1;
  String title;

  _Notification_switchState({required this.switch1,required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(child: Text('Notification',style: headingStyle(),)),
          Container(
            child: Switch(
              inactiveTrackColor: Colors.transparent,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              value: switch1,
              activeColor: Colors.grey,
              onChanged: (value) {
                setState(() {
                  switch1 = value;
                  print(value);
                }
                );

              },
            ),
          )
        ],
      ),
    );
  }
}
