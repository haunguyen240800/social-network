import 'package:flutter/material.dart';
import 'package:shop/constants/constants.dart';
import 'package:shop/models/Product.dart';
import 'package:shop/screens/details/details_screen.dart';
import 'package:shop/screens/home/components/categories.dart';
import 'package:shop/screens/home/components/item_card.dart';

class BodyHomeScreen extends StatefulWidget {
  BodyHomeScreen({Key? key}) : super(key: key);

  @override
  State<BodyHomeScreen> createState() => _BodyHomeScreenState();
}

class _BodyHomeScreenState extends State<BodyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            'Women',
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: kDefaultPaddin,
                crossAxisSpacing: kDefaultPaddin,
                crossAxisCount: 2,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductDetailScreen(
                      product: products[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
