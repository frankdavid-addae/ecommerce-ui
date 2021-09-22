// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_ui/screens/home/components/icon_button_with_counter.dart';
import 'package:ecommerce_ui/screens/home/components/search_field.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconButtonWithCounter(
            svgSrc: 'assets/icons/Cart Icon.svg',
            onTap: () {},
          ),
          IconButtonWithCounter(
            svgSrc: 'assets/icons/Bell.svg',
            count: 3,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
