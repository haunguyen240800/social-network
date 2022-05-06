import 'package:flutter/material.dart';
import 'package:shop/constants/constants.dart';
import 'package:shop/models/Product.dart';
import 'package:shop/screens/details/details_screen.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({Key? key, required this.product, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(
              product: product,
            ),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(kDefaultPaddin),
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(product.image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              products[0].title,
              style: const TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            '\$${product.price}',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
