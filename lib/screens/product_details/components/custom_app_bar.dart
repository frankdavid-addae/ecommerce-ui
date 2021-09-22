// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_ui/components/rounded_icon_button.dart';
import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.rating,
  }) : super(key: key);

  final double rating;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundedIconButton(
              iconData: Icons.arrow_back_ios,
              onPressed: () => Navigator.pop(context),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 5.0),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Row(
                children: [
                  Text(
                    '$rating',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 5),
                  SvgPicture.asset('assets/icons/Star Icon.svg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
