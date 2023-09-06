import 'package:bmi_app/pages/bmi_result.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ElevatedButtonWidget extends StatelessWidget {
  ElevatedButtonWidget(
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
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => BMIResultPage()));
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
