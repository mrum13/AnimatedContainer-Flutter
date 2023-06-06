import 'package:flutter/material.dart';

class CardSized extends StatelessWidget {
  final String text;
  final int index;
  final Color color;
  final Color textColor;
  final Color borderColor;

  const CardSized(
      {super.key,
      required this.index,
      required this.text,
      required this.borderColor,
      required this.textColor,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color,
          border: Border.all(color: borderColor)),
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        text,
        style: TextStyle(fontSize: 16, color: textColor),
        textAlign: TextAlign.center,
      ),
    );
  }
}
