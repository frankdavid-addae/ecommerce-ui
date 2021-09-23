// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_ui/components/rounded_icon_button.dart';
import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/models/product.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 0;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20.0),
      ),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
            (index) => ColorDot(
              color: product.colors[index],
              isSelected: selectedColor == index,
            ),
          ),
          Spacer(),
          RoundedIconButton(
            iconData: Icons.remove,
            onPressed: () {},
          ),
          SizedBox(width: getProportionateScreenWidth(15.0)),
          RoundedIconButton(
            iconData: Icons.add,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2.0),
      padding: EdgeInsets.all(8.0),
      height: getProportionateScreenWidth(40.0),
      width: getProportionateScreenWidth(40.0),
      decoration: BoxDecoration(
        // color: product.colors[0],
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? kPrimaryColor : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
