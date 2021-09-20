import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/screens/auth/signup/signup_screen.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.popAndPushNamed(context, SignUpScreen.routeName),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Don\'t have an account? ',
            style: TextStyle(
              fontSize: getProportionateScreenWidth(16.0),
            ),
          ),
          Text(
            'Sign Up',
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: getProportionateScreenWidth(16.0),
            ),
          ),
        ],
      ),
    );
  }
}
