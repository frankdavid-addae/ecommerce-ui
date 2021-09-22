// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_ui/models/product.dart';
import 'package:ecommerce_ui/screens/product_details/components/body.dart';
import 'package:ecommerce_ui/screens/product_details/components/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  static String routeName = 'product-detail-screen';
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: arguments.products.rating),
      ),
      body: ProductDetailsScreenBody(product: arguments.products),
    );
  }
}

class ProductDetailsArguments {
  final Product products;

  ProductDetailsArguments({required this.products});
}
