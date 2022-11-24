import 'package:flutter/material.dart';

Color getColorFromHex(String hexColor) {
  hexColor = hexColor.replaceAll("#", "");
  return Color(int.parse("0xff$hexColor"));
}
