import 'package:flutter/material.dart';

class Ktext extends StatelessWidget {
  const Ktext({
    super.key,
    required this.text,
    this.fontWeight = FontWeight.normal,
    this.fontsize,
  });
  final String text;
  final FontWeight fontWeight;
  final double? fontsize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: fontsize, fontWeight: fontWeight),
    );
  }
}
