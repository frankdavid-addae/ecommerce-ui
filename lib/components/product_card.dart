// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/models/product.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 140.0,
    this.aspectRatio = 1.02,
    required this.product,
    required this.onTap,
  }) : super(key: key);

  final double width, aspectRatio;
  final Product product;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20.0)),
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          width: getProportionateScreenWidth(width),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: aspectRatio,
                child: Container(
                  padding: EdgeInsets.all(
                    getProportionateScreenWidth(20.0),
                  ),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Image.asset(product.images[0]),
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                product.title,
                style: TextStyle(color: kBlackColor),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    // '₵'
                    '\$${product.price}',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(18.0),
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(30.0),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(
                        getProportionateScreenWidth(8.0),
                      ),
                      width: getProportionateScreenHeight(28.0),
                      height: getProportionateScreenHeight(28.0),
                      decoration: BoxDecoration(
                        color: product.isFavourite
                            ? kPrimaryColor.withOpacity(0.15)
                            : kSecondaryColor.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/Heart Icon_2.svg',
                        color: product.isFavourite
                            ? Color(0xFFFF4848)
                            : Color(0xFFDBDEE4),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
