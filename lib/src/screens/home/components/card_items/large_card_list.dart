import 'package:flutter/material.dart';
import 'package:plant_app/src/screens/home/components/card_items/card_item.dart';

class LargeCardList extends StatelessWidget {
  const LargeCardList({super.key, required this.size, required this.listCards});

  final Size size;
  final List<LargeCard> listCards;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: listCards,
      ),
    );
  }
}
