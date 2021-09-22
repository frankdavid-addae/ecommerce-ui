// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/screens/home/components/section_title.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Special for you',
          onTap: () {},
        ),
        SizedBox(height: getProportionateScreenHeight(20.0)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: 'assets/images/Image Banner 2.png',
                category: 'Smartphones',
                numberOfBrands: 18,
                onTap: () {},
              ),
              SpecialOfferCard(
                image: 'assets/images/Image Banner 3.png',
                category: 'Fashion',
                numberOfBrands: 24,
                onTap: () {},
              ),
              SizedBox(width: getProportionateScreenWidth(20.0)),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numberOfBrands,
    required this.onTap,
  }) : super(key: key);

  final String category, image;
  final int numberOfBrands;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20.0)),
      child: SizedBox(
        width: getProportionateScreenWidth(242.0),
        height: getProportionateScreenWidth(100.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF343434).withOpacity(0.4),
                      Color(0xFF343434).withOpacity(0.15),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(15.0),
                  vertical: getProportionateScreenWidth(10.0),
                ),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(color: kWhiteColor),
                    children: [
                      TextSpan(
                        text: '$category\n',
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(18.0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: '$numberOfBrands brands'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
