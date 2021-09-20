// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_ui/screens/login_success/components/body.dart';
import 'package:flutter/material.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = 'login-success-screen';
  const LoginSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text('Login Successful'),
      ),
      body: LoginSuccessScreenBody(),
    );
  }
}
