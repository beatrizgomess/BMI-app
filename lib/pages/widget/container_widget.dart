
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        height: 200,
        width: 500,
        color: Colors.amber,
        alignment: Alignment.center,
        child: Text("Title"),
      ),
    );
  }
}