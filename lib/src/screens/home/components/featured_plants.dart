import 'package:flutter/material.dart';
import 'package:plant_app/src/constants.dart';

class FeaturedPlants extends StatelessWidget {
  FeaturedPlants({
    super.key,
    required this.size,
    required this.image,
    required this.press,
  });

  final Size size;
  final String image;
  void Function()? press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
