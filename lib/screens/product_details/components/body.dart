// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_ui/components/default_button.dart';
import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/models/product.dart';
import 'package:ecommerce_ui/screens/product_details/components/color_dots.dart';
import 'package:ecommerce_ui/screens/product_details/components/product_description.dart';
import 'package:ecommerce_ui/screens/product_details/components/product_images.dart';
import 'package:ecommerce_ui/screens/product_details/components/rounded_top_container.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreenBody extends StatelessWidget {
  const ProductDetailsScreenBody({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          RoundedTopContainer(
            color: kWhiteColor,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  onTap: () {},
                ),
                RoundedTopContainer(
                  color: Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      ColorDots(product: product),
                      RoundedTopContainer(
                        color: kWhiteColor,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth! * 0.15,
                            right: SizeConfig.screenWidth! * 0.15,
                            top: getProportionateScreenWidth(15.0),
                            bottom: getProportionateScreenWidth(40.0),
                          ),
                          child: DefaultButton(
                            buttonText: 'Add To Cart',
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
