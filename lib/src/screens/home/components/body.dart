import 'package:flutter/material.dart';
import 'package:plant_app/src/constants.dart';
import 'package:plant_app/src/screens/datails/datails_screeen.dart';
import 'package:plant_app/src/screens/home/components/featured_plants.dart';
import 'package:plant_app/src/screens/home/components/header_with_search_box.dart';
import 'package:plant_app/src/screens/home/components/recomends_plants.dart';
import 'package:plant_app/src/screens/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    

    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          Container(
            height: 50,
          ),
          TitleWithMoreBtn(
            title: 'Recommended',
            press: () {},
          ),
          const RecomendsPlants(),
          const SizedBox(
            height: kDefaultPadding,
          ),
          TitleWithMoreBtn(
            title: 'Featured Plants',
            press: () {},
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FeaturedPlants(
                  size: size,
                  image: 'assets/images/bottom_img_1.png',
                  press: () {},
                ),
                FeaturedPlants(
                  size: size,
                  image: 'assets/images/bottom_img_2.png',
                  press: () {},
                )
              ],
            ),
          ),
          TitleWithMoreBtn(
            title: 'Recommended',
            press: () {},
          ),
          const RecomendsPlants(),
        ],
      ),
    );
  }
}
