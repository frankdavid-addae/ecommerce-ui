import 'package:ecommerce_ui/routes.dart';
import 'package:ecommerce_ui/screens/splash/splash_screen.dart';
import 'package:ecommerce_ui/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EcommerceUiApp());
}

class EcommerceUiApp extends StatelessWidget {
  const EcommerceUiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce UI',
      theme: theme(),
      // home: const SplashScreen(),
      // We use routeName so we don't have to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
