// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/models/cart.dart';
import 'package:ecommerce_ui/screens/cart/components/body.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  static String routeName = 'cart-screen';
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: CartScreenBody(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.pop(context),
      ),
      title: Column(
        children: [
          Text(
            'Your Cart',
            style: TextStyle(color: kBlackColor),
          ),
          Text(
            '${carts.length} items',
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
