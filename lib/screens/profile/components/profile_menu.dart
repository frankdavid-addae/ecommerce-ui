// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.icon,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String icon, text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0.5,
          padding: EdgeInsets.all(20.0),
          primary: Color(0xFFF5F6F9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              width: 22.0,
              color: kPrimaryColor,
            ),
            SizedBox(width: 20.0),
            Expanded(
              child: Text(
                text,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: kTextColor,
            ),
          ],
        ),
      ),
    );
  }
}
