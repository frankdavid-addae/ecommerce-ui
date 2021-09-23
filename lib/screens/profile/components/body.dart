// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_ui/screens/profile/components/profile_menu.dart';
import 'package:ecommerce_ui/screens/profile/components/profile_picture.dart';
import 'package:flutter/material.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePicture(),
        SizedBox(height: 20.0),
        ProfileMenu(
          icon: 'assets/icons/User Icon.svg',
          text: 'My Account',
          onPressed: () {},
        ),
        ProfileMenu(
          icon: 'assets/icons/Bell.svg',
          text: 'Notifications',
          onPressed: () {},
        ),
        ProfileMenu(
          icon: 'assets/icons/Settings.svg',
          text: 'Settings',
          onPressed: () {},
        ),
        ProfileMenu(
          icon: 'assets/icons/Question mark.svg',
          text: 'Help Center',
          onPressed: () {},
        ),
        ProfileMenu(
          icon: 'assets/icons/Log out.svg',
          text: 'Log Out',
          onPressed: () {},
        ),
      ],
    );
  }
}
