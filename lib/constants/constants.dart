import 'package:flutter/material.dart';

class IconConstants{
  static const String airCond = 'assets/icons/ac.svg';
  static const String user = 'assets/icons/account.svg';
  static const String notification = 'assets/icons/bell.svg';
  static const String bug = 'assets/icons/bugs.svg';
  static const String clean = 'assets/icons/cleans.svg';
  static const String light = 'assets/icons/lights.svg';
  static const String more = 'assets/icons/more.svg';
  static const String orders = 'assets/icons/orders.svg';
  static const String saw = 'assets/icons/saw.svg';
  static const String settings = 'assets/icons/settings.svg';
  static const String twoSettings = 'assets/icons/settingsLarge.svg';
  static const String water = 'assets/icons/water.svg';
}

class ColorConstants{
  static const primaryColor1 = Color(0xFF346EDF);
  static const primaryColor2 = Color(0xFF6FC8FB);


}

class GradientConstants{

  static const Gradient gradient1 = LinearGradient(
    colors: [ColorConstants.primaryColor1, ColorConstants.primaryColor2],
    begin: Alignment.topLeft,
    end: Alignment.topRight,
  );

  static const Gradient gradient2 = LinearGradient(
    colors: [ColorConstants.primaryColor2, ColorConstants.primaryColor1],
    begin: Alignment.topLeft,
    end: Alignment.topRight,
  );

}