// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_ui/components/default_button.dart';
import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/screens/home/home_screen.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class SignInSuccessScreenBody extends StatelessWidget {
  const SignInSuccessScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight! * 0.04),
        Image.asset(
          'assets/images/success.png',
          height: SizeConfig.screenHeight! * 0.4,
        ),
        SizedBox(height: SizeConfig.screenHeight! * 0.08),
        Text(
          'Sign In Successful',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30.0),
            fontWeight: FontWeight.bold,
            color: kBlackColor,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth! * 0.6,
          child: DefaultButton(
            buttonText: 'Go To Home',
            onPressed: () => Navigator.pushNamed(context, HomeScreen.routeName),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
