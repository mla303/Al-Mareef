import 'package:flutter/material.dart';

import 'colors.dart';


class CustomTextStyle {
  static TextStyle buttontext(BuildContext context) {
    return TextStyle(
        color: whiteColor,
        fontSize: MediaQuery.of(context).size.height / 60,
        fontWeight: FontWeight.bold);
  }
  static TextStyle display2(BuildContext context) {
    return TextStyle(
        color: basicColor,
        fontSize: MediaQuery.of(context).size.height / 60,
        fontWeight: FontWeight.w400);
  }
  static TextStyle listtitle(BuildContext context) {
    return TextStyle(
        color: basicColor,
        fontSize: MediaQuery.of(context).size.height / 40,
        fontWeight: FontWeight.w600);
  }

  static TextStyle title(BuildContext context) {
    return TextStyle(
        color: whiteColor,
        fontSize: MediaQuery.of(context).size.height / 40,
        fontWeight: FontWeight.w600);
  }

  static TextStyle homepage(BuildContext context) {
    return TextStyle(
        color: whiteColor,
        fontSize: MediaQuery.of(context).size.height / 54,
        fontWeight: FontWeight.w600);
  }
  
  
  static TextStyle mgradeTextHeading(BuildContext context) {
    return TextStyle(
        color: whiteColor,
        fontSize: MediaQuery.of(context).size.height / 60,
        fontWeight: FontWeight.w600);
  }
  
  static TextStyle mgradeText(BuildContext context) {
    return TextStyle(
        color: Colors.black.withOpacity(0.4),
        fontSize: MediaQuery.of(context).size.height / 60,
        fontWeight: FontWeight.w600);
  }
  
  
}