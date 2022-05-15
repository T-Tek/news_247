// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: Color(0XFF111727),
    primaryColorDark: Color(0XFF50B5B0),
    primaryColorLight: Color(0XFFFFFFFD),
    

    textTheme: TextTheme(
      headline1: TextStyle(
        color: Color(0XFFF8FCFF),
        fontWeight: FontWeight.bold,
        fontSize: 25
      ),
      headline2: TextStyle(
        color: Color(0XFFC6C7CD),
        fontWeight: FontWeight.bold,
        fontSize: 20
      ),
      headline3: TextStyle(
        color: Color(0XFFF8FCFF),
        fontWeight: FontWeight.bold,
        fontSize: 18
      ),
      headline4: TextStyle(
        color: Color(0XFF828898),
        fontWeight: FontWeight.bold,
        fontSize: 12
      ),
    ),

    iconTheme: IconThemeData(
      color: Color(0XFF828898)
    ),

    
    
    
  );
}
