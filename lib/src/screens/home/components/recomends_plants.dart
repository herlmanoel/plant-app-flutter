import 'package:flutter/material.dart';
import 'package:plant_app/src/screens/datails/datails_screeen.dart';
import 'package:plant_app/src/screens/home/components/recommended_plant_card.dart';

class Plant {
  final String title, country, image;
  final int price;

  Plant(
      {required this.title,
      required this.country,
      required this.price,
      required this.image});
}

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var listPlants = [
      Plant(
        price: 30,
        title: 'Samambaia',
        country: 'Russia',
        image: 'assets/images/image_1.png',
      ),
      Plant(
        price: 54,
        title: 'Orquídea',
        country: 'Russia',
        image: 'assets/images/image_2.png',
      ),
      Plant(
        price: 10,
        title: 'Suculenta',
        country: 'Russia',
        image: 'assets/images/image_3.png',
      ),
      Plant(
        price: 90,
        title: 'Bromélia',
        country: 'Russia',
        image: 'assets/images/image_1.png',
      ),
      Plant(
        price: 500,
        title: 'Cacto',
        country: 'Russia',
        image: 'assets/images/image_2.png',
      ),
    ];

    List<Widget> recommendedPlantCardList = listPlants.map((objeto) {
      return RecommendedPlantCard(
        image: objeto.image,
        title: objeto.title,
        press: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DatailsScreen(
                price: objeto.price,
                title: objeto.title,
                country: objeto.country,
                image: objeto.image,
              ),
            ),
          );
        },
        price: objeto.price,
        country: objeto.country,
      );
    }).toList();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: recommendedPlantCardList,
      ),
    );
  }
}
