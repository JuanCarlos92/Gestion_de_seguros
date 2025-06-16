import 'package:flutter/material.dart';

class TitleHeader extends StatelessWidget {
  final String title;
  final double fontSize;
  final FontWeight fontWeight;

  const TitleHeader({
    super.key,
    required this.title,
    this.fontSize = 24,
    this.fontWeight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}