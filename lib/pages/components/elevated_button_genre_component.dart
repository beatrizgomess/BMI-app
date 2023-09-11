import 'package:flutter/material.dart';

class ElevatedButtonSelectGenre extends StatelessWidget {
  ElevatedButtonSelectGenre(
      {super.key, required this.genre, required this.avatar});

  String genre;
  String avatar;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (genre == "Female") {
          genre = "Female";
          avatar = "assets/woman.png";
        } else {
          genre = "Man";
          avatar = "assets/man.png";
        }
      },
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
