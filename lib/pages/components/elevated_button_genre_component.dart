import 'package:flutter/material.dart';

class ElevatedButtonSelectGenre extends StatelessWidget {
  ElevatedButtonSelectGenre({super.key, required this.genre});

  String genre;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(255, 193, 125, 1),
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
      child: Text(
        genre,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
