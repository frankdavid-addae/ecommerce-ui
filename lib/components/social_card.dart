// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key? key,
    this.icon,
    this.onTap,
  }) : super(key: key);

  final String? icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(10.0),
        ),
        padding: EdgeInsets.all(getProportionateScreenWidth(12.0)),
        height: getProportionateScreenHeight(40.0),
        width: getProportionateScreenWidth(40.0),
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon!),
      ),
    );
  }
}
