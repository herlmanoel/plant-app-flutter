import 'package:flutter/material.dart';
import 'package:plant_app/src/constants.dart';

class RecommendedPlantCard extends StatelessWidget {
  const RecommendedPlantCard({
    super.key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  });

  final String image, title, country;
  final int price;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
          left: 20,
          bottom: 20,
          top: 20,
        ),
        width: size.width * 0.37,
        padding: const EdgeInsets.only(
          bottom: kDefaultPadding / 2,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 5),
              blurRadius: 25,
              color: kPrimaryColor.withOpacity(0.23),
            )
          ],
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          children: [
            Image.asset(image),
            Container(
              padding: const EdgeInsets.only(
                top: kDefaultPadding / 2,
                left: kDefaultPadding / 2,
                right: kDefaultPadding / 2,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: title.toUpperCase(),
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '\$$price',
                        style: TextStyle(color: kPrimaryColor),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      country.toUpperCase(),
                      style: const TextStyle(
                        color: kPrimaryColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
