// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/models/cart.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key,
    required this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(88.0),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(20.0)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              carts[0].product.title,
              style: TextStyle(fontSize: 16.0, color: kBlackColor),
              maxLines: 2,
            ),
            SizedBox(height: 10.0),
            Text.rich(
              TextSpan(
                text: '\$${cart.product.price}',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: kPrimaryColor,
                ),
                children: [
                  TextSpan(
                    text: ' x${cart.numOfItem}',
                    style: TextStyle(color: kTextColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
