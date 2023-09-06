import 'package:flutter/material.dart';

class TextFormFieldComponent extends StatelessWidget {
  TextFormFieldComponent({super.key, required this.title, required this.icon});

  String title;
  Widget icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: TextFormField(
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
