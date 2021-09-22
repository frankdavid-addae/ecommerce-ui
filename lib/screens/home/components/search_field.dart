// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth! * 0.6,
      // height: 50.0,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextField(
        onChanged: (value) {},
        cursorColor: kTextColor,
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: 'Search Product',
          prefixIcon: Icon(
            Icons.search,
            color: kBlackColor,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20.0),
            vertical: getProportionateScreenWidth(9.0),
          ),
        ),
      ),
    );
  }
}
