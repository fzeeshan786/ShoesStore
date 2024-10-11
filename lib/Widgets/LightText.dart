


// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class LightText extends StatelessWidget {

  double size;
  final String text;
  final String font;
  Color color;
  TextOverflow textOverflow;
  LightText({
    super.key,
    this.textOverflow = TextOverflow.ellipsis,
    this.font = "font30",
    this.size = 20,
    this.color = Colors.black,
    required this.text,
  });
  // const LightText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: textOverflow,
      text,
      style: TextStyle(
        // fontWeight: FontWeight.bold,
          fontSize: size,
          color: color,
          fontFamily: font),
    );
  }
}
