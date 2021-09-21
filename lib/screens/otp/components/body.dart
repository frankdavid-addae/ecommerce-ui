// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/screens/otp/components/otp_form.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class OtpScreenBody extends StatelessWidget {
  const OtpScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20.0),
          ),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.05),
              Text(
                'OTP Verification',
                style: headerStyle,
              ),
              Text('A four digit code has been sent to your phone number.'),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight! * 0.15),
              OtpForm(),
              SizedBox(height: SizeConfig.screenHeight! * 0.10),
              GestureDetector(
                onTap: () {
                  // Resend OTP
                },
                child: Text(
                  'Resend OTP',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('This code will expire in '),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: Duration(seconds: 30),
          builder: (context, dynamic value, child) => Text(
            '00:${value!.toInt()}',
            style: TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}
