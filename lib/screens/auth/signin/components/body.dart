// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_ui/components/no_account_text.dart';
import 'package:ecommerce_ui/components/social_card.dart';
import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/screens/auth/signin/components/signin_form.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class SignInScreenBody extends StatelessWidget {
  const SignInScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20.0),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight! * 0.04),
                Text(
                  'Welcome Back',
                  style: headerStyle,
                ),
                Text(
                  'Sign in with your email and password \nor continue with social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight! * 0.08),
                SignInForm(),
                SizedBox(height: SizeConfig.screenHeight! * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: 'assets/icons/google-icon.svg',
                      onTap: () {},
                    ),
                    SocialCard(
                      icon: 'assets/icons/facebook-2.svg',
                      onTap: () {},
                    ),
                    SocialCard(
                      icon: 'assets/icons/twitter.svg',
                      onTap: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20.0)),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
