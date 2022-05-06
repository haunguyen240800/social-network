import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/constants/constants.dart';
import 'package:shop/models/Product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;
  const ProductDetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset('assets/icons/back.svg'),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
              color: kTextColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/cart.svg',
              color: kTextColor,
            ),
          ),
          const SizedBox(width: kDefaultPaddin / 2,)
        ],
      ),
      
    );
  }
}