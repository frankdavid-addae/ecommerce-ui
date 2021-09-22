// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_ui/screens/home/components/home_header.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20.0)),
            HomeHeader(),
          ],
        ),
      ),
    );
  }
}
