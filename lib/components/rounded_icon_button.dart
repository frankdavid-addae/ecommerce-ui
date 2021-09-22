import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    Key? key,
    required this.iconData,
    required this.onPressed,
  }) : super(key: key);

  final IconData iconData;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(40.0),
      width: getProportionateScreenWidth(40.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Icon(iconData, color: kBlackColor),
        style: ElevatedButton.styleFrom(
          primary: kWhiteColor,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
      ),
    );
  }
}
