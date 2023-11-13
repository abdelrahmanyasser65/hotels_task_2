
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final TextDecoration?textDecoration;
  final FontWeight? fontWeight;

  final bool? alignCenter;

  final int? maxLines;

  const CustomText(
      {Key? key,
        required this.text,
        required this.color,
        required this.fontSize,
        this.fontWeight,
        this.alignCenter,
        this.maxLines, this.textDecoration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,

      style: TextStyle(
        decoration:textDecoration??TextDecoration.none ,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
      textAlign: alignCenter == true ? TextAlign.center : null,
      maxLines: maxLines,
    );
  }
}