import 'package:flutter/material.dart';

class Ktext extends StatelessWidget {
  const Ktext({
    super.key,
    required this.text,
    this.fontWeight = FontWeight.normal,
    this.fontsize,
    this.overflow,
  });
  final String text;
  final FontWeight fontWeight;
  final double? fontsize;
  final TextOverflow? overflow;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.fade,
      maxLines: 500,
      style: TextStyle(
          fontSize: fontsize,
          fontWeight: fontWeight,
          overflow: overflow),
    );
  }
}
