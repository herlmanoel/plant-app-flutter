import 'package:flutter/material.dart';
import 'package:plant_app/src/screens/datails/components/body.dart';

class DatailsScreen extends StatelessWidget {
  const DatailsScreen(
      {Key? key,
      required this.title,
      required this.country,
      required this.price,
      required this.image})
      : super(key: key);
  final String title, country, image;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(price: price, title: title, country: country, image: image),
    );
  }
}
