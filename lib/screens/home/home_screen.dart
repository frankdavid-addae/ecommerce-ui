// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_ui/components/custom_bottom_nav_bar.dart';
import 'package:ecommerce_ui/enums.dart';
import 'package:ecommerce_ui/screens/home/components/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = 'home-screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreenBody(),
      bottomNavigationBar: CustomBottomNavBar(seletedMenu: MenuState.home),
    );
  }
}
