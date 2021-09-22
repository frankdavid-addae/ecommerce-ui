import 'package:ecommerce_ui/models/product.dart';
import 'package:ecommerce_ui/screens/product_details/components/product_images.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreenBody extends StatelessWidget {
  const ProductDetailsScreenBody({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return ProductImages(product: product);
  }
}
