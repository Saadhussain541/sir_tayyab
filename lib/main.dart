import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:metro_pat/Constants/size_config.dart';
import 'package:metro_pat/Views/Saad/job_discription.dart';
import 'package:metro_pat/Views/Saad/job_module.dart';
import 'package:metro_pat/Views/Saad/notification_module.dart';
import 'package:metro_pat/Views/Saad/service_history.dart';
import 'package:metro_pat/Views/Saad/setting_module.dart';

import 'Views/Saad/calender_module.dart';
import 'Views/Screens/mobile_screen.dart';
import 'Views/Screens/tablet_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    SizeConfig().init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ResponsiveLayout(mobileScreenLayout: service_history(), tabletScreenLayout: TabletScreen(),),
    );
  }
}
class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget tabletScreenLayout;
  const ResponsiveLayout({super.key, required this.mobileScreenLayout, required this.tabletScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.maxWidth>600){
        return tabletScreenLayout;
      }else{
        return mobileScreenLayout;
      }
    });
  }
}