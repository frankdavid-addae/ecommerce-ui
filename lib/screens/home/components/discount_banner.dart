// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20.0),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20.0),
        vertical: getProportionateScreenWidth(15.0),
      ),
      // height: 90.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF4A3298),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Text.rich(
        TextSpan(
          text: 'A Summer Surprise\n',
          style: TextStyle(color: kWhiteColor),
          children: [
            TextSpan(
              text: 'Cashback 20%',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
