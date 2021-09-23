// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_ui/models/cart.dart';
import 'package:ecommerce_ui/screens/cart/components/cart_item_card.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartScreenBody extends StatefulWidget {
  const CartScreenBody({Key? key}) : super(key: key);

  @override
  State<CartScreenBody> createState() => _CartScreenBodyState();
}

class _CartScreenBodyState extends State<CartScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20.0),
      ),
      child: ListView.builder(
        itemCount: carts.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Dismissible(
            key: Key(carts[index].product.id.toString()),
            direction: DismissDirection.endToStart,
            background: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Color(0xFFFFE6E6),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                children: [
                  Spacer(),
                  SvgPicture.asset('assets/icons/Trash.svg'),
                ],
              ),
            ),
            onDismissed: (direction) => setState(() => carts.removeAt(index)),
            child: CartItemCard(cart: carts[index]),
          ),
        ),
      ),
    );
  }
}
