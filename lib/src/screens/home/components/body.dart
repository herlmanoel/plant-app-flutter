import 'package:flutter/material.dart';
import 'package:plant_app/src/constants.dart';
import 'package:plant_app/src/screens/home/components/card_items/card_item.dart';
import 'package:plant_app/src/screens/home/components/card_items/large_card_list.dart';
import 'package:plant_app/src/screens/home/components/header_with_search_box.dart';
import 'package:plant_app/src/screens/home/components/recomends_plants.dart';
import 'package:plant_app/src/screens/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<LargeCard> largeCardList = [
      LargeCard(
        size: size,
        image: 'assets/images/bottom_img_1.png',
        press: () {},
      ),
      LargeCard(
        size: size,
        image: 'assets/images/bottom_img_2.png',
        press: () {},
      )
    ];
    return SingleChildScrollView(
      // remove o gesto de puxar para cima (pull-to-refresh) 
      // do SingleChildScrollView, permitindo que ele role verticalmente, 
      // mas sem a funcionalidade de atualizar o conteúdo ao puxar.
      physics: const ClampingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(
            size: size,
            title: 'Hi Uishopy!',
          ),
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
          LargeCardList(
            size: size,
            listCards: largeCardList,
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
