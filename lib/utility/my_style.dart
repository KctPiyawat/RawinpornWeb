import 'package:flutter/material.dart';

class MyStyle {
  Color sky = Color(0xff21a9e1);
  Color red = Color(0xffde552f);
  Color blue = Color(0xff0f3673);
  Color yellow = Color(0xffffedcb);
  Color brow = Color(0xff381f04);

  TextStyle h1Title() => TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: blue,
      );

  TextStyle h2Title() => TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: blue,
      );
  TextStyle h3Title() => TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: blue,
      );

  TextStyle h3Link() => TextStyle(
        fontSize: 14,
        color: blue,
      );

  MyStyle();
}
