// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_ui/screens/auth/signin/signin_screen.dart';
import 'package:ecommerce_ui/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce_ui/screens/login_success/login_success_screen.dart';
import 'package:ecommerce_ui/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

// Named routes are used here
// All routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
};
