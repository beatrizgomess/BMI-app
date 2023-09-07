import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFormFieldComponent extends StatelessWidget {
  TextFormFieldComponent(
      {super.key,
      required this.title,
      required this.icon,
      required this.controller});

  String title;
  Widget icon;
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            prefixIcon: icon,
            label: Text(title),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black26),
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}
