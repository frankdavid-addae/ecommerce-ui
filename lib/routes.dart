// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_ui/screens/cart/cart_screen.dart';
import 'package:ecommerce_ui/screens/complete_profile/complete_profile_screen.dart';
import 'package:ecommerce_ui/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce_ui/screens/home/home_screen.dart';
import 'package:ecommerce_ui/screens/product_details/product_details_screen.dart';
import 'package:ecommerce_ui/screens/signin_success/signin_success_screen.dart';
import 'package:ecommerce_ui/screens/otp/otp_screen.dart';
import 'package:ecommerce_ui/screens/signin/signin_screen.dart';
import 'package:ecommerce_ui/screens/signup/signup_screen.dart';
import 'package:ecommerce_ui/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

// Named routes are used here
// All routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignInSuccessScreen.routeName: (context) => SignInSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ProductDetailsScreen.routeName: (context) => ProductDetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
};
