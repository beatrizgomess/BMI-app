import 'package:flutter/material.dart';

class BMILevelComponent extends StatelessWidget {
  BMILevelComponent({
    required this.color,
    required this.level,
    required this.numberLevel,
    super.key,
  });

  Color color;
  String level;
  String numberLevel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            maxRadius: 10,
            backgroundColor: color,
          ),
          Text(
            level,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          Text(
            numberLevel,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
