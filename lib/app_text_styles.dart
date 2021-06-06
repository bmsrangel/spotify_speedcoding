import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle get headerStyle => TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 24.0,
      );

  static TextStyle get cardTitleStyle => TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
      );

  static TextStyle get cardBodyStyle => TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );

  static TextStyle get playlistCardTitleStyle => TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      );
  static TextStyle get playlistCardBodyStyle => TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
}
