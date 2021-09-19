// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_ui/screens/auth/signin/components/body.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = 'signin-screen';
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: SignInScreenBody(),
    );
  }
}
