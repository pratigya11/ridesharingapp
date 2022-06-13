import 'package:flutter/material.dart';
//scrollable_panel 0.4.1
class AppColor{
  static const Color colorPrimary = Color(0xFFBB1347);
  static const Color lightPrimary = Color(0xc3fcd1df);
  static const Color inputFocusColor = Color(0xFF3BFEBB);
  static const Color verylightPrimary = Color(0xFFcdcdcd);
  static const Color splashColorPrimary = Color(0xFF1F5DEC);
  static const Color onLineColor = Color(0xFF00C853);
  static const Color offLineColor = Color(0xFFDD2C00);
  static const Color greenGrey = Color(0xFFdfdfdf);
  static const Color noticeColor = Color(0xFF1F5DEC);
  static const primaryGradient = LinearGradient(
    colors: <Color>[Colors.white, colorPrimary],
    stops: [0.1, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static const greenGridGradient = LinearGradient(
    colors: <Color>[colorPrimary, greenGrey],
    stops: [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}


final miniTitle = TextStyle(
  fontSize: 14,fontWeight: FontWeight.w600
);
final miniTitleBold = TextStyle(
    fontSize: 15,fontWeight: FontWeight.w800
);
//begin: Alignment.topCenter,
//end: Alignment.center,
//colors: [AppColor.colorPrimary, Colors.white])


