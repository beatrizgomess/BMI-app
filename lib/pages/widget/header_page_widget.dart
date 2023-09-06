import 'package:flutter/material.dart';

class HeaderPageWidget extends StatelessWidget {
  HeaderPageWidget({super.key, required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 10,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromRGBO(255, 193, 125, 1)),
      child: Padding(
        padding: EdgeInsets.only(top: 20, left: 20),
        child: Text(
          title,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}