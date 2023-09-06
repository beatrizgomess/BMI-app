import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  AvatarWidget({super.key, required this.avatar});

  String avatar;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: 80,
      child: Image(image: AssetImage(avatar!)),
    );
  }
}
