import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  AvatarWidget({super.key, required this.avatar, required this.height});

  String avatar;
  double height;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: height,
      child: Image(image: AssetImage(avatar!)),
    );
  }
}
