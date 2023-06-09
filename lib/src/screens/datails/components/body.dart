import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/src/constants.dart';
import 'package:plant_app/src/screens/datails/components/icon_card.dart';

class Body extends StatelessWidget {
  const Body(
      {Key? key,
      required this.title,
      required this.country,
      required this.price, required this.image})
      : super(key: key);

  final String title, country, image;
  final int price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImagesAndIcons(size: size, image: image,),
          TitleAndPrice(
            size: size,
            price: price,
            title: title,
            country: country,
          ),
          const SizedBox(
            height: kDefaultPadding + 5,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(20)),
                    ),
                    backgroundColor: kPrimaryColor, // cor de fundo do botão
                  ),
                  child: const Text(
                    'Buy Now',
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.transparent,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Description',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    super.key,
    required this.size,
    required this.title,
    required this.price,
    required this.country,
  });

  final Size size;
  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: kDefaultPadding,
        left: kDefaultPadding,
        right: kDefaultPadding,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Text(
                country.toUpperCase(),
                style: const TextStyle(
                  color: kPrimaryColor,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            '\$$price',
            style: const TextStyle(
              color: kPrimaryColor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class ImagesAndIcons extends StatelessWidget {
  const ImagesAndIcons({
    super.key,
    required this.size,
    required this.image,
  });

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.8,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset('assets/icons/back_arrow.svg')),
                  ),
                  Spacer(),
                  IconCard(icon: 'assets/icons/sun.svg'),
                  IconCard(icon: 'assets/icons/icon_2.svg'),
                  IconCard(icon: 'assets/icons/icon_3.svg'),
                  IconCard(icon: 'assets/icons/icon_4.svg'),
                ],
              ),
            ),
          ),
          Container(
            height: size.height * 0.8,
            width: size.width * 0.75,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(63),
                bottomLeft: Radius.circular(63),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 60,
                  color: kPrimaryColor.withOpacity(0.29),
                )
              ],
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                fit: BoxFit.cover,
                image: AssetImage(image),
              ),
            ),
          )
        ],
      ),
    );
  }
}
