import 'package:ecommerce_ui/screens/components/body.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = 'splash-screen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Initializing the size config class
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
