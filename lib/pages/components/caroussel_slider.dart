import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarousselSliderComponent extends StatelessWidget {
  CarousselSliderComponent({super.key});

  var items = [
    "assets/dumbbell.png",
    "assets/playing.png",
    "assets/skateboarding.png"
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      disableGesture: false,
      options: CarouselOptions(height: 400.0),
      items: items.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Image(
                image: AssetImage(i),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
