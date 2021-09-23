// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_ui/components/custom_bottom_nav_bar.dart';
import 'package:ecommerce_ui/enums.dart';
import 'package:ecommerce_ui/screens/profile/components/body.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = 'profile-screen';
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Profile'),
      ),
      body: const ProfileScreenBody(),
      bottomNavigationBar: CustomBottomNavBar(seletedMenu: MenuState.profile),
    );
  }
}
