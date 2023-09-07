import 'package:bmi_app/models/person.dart';
import 'package:flutter/material.dart';

class ElevatedButtonModalBottomSheet extends StatelessWidget {
  ElevatedButtonModalBottomSheet(
      {super.key,
      this.widget,
      required this.title,
      required this.backgroundColor,
      required this.textColor});

  Widget? widget;
  String title;
  Color backgroundColor;
  Color textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return widget!;
          },
        );
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          textStyle:
              const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
      child: Text(
        title,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
