import 'package:flutter/material.dart';

import 'constants.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}
TextStyle headingStyle()
{
  return TextStyle(
    color: secondary,
    fontSize: heading_size
  );
}
TextStyle headingStyle1({Color color1=primary})
{
  return TextStyle(
    fontWeight: FontWeight.w600,
      color: color1,
      fontSize: extra_heading_size
  );
}
SizedBox Vertical_space(double value)
{
  return SizedBox(
    height: SizeConfig.screenHeight*value,
  );
}
SizedBox Horizontal_space(double value)
{
  return SizedBox(
    width: SizeConfig.screenWidth*value,
  );
}
