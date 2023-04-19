import 'package:flutter/material.dart';

/// Note: Edit the variables to change the behavior of the Text
/// There is no need to change code beyond the variables.
const boldText = FontWeight.bold;
const textColor = Colors.white;
const double textSize = 28;

/// Do not change code bellow.
class StyledText extends StatelessWidget {
  final String text;
  const StyledText(this.text, {super.key});
  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
          fontWeight: boldText, color: textColor, fontSize: textSize),
    );
  }
}
