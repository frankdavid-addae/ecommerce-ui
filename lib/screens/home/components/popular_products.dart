import 'package:ecommerce_ui/components/product_card.dart';
import 'package:ecommerce_ui/models/product.dart';
import 'package:ecommerce_ui/screens/home/components/section_title.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: 'Popular Products', onTap: () {}),
        SizedBox(height: getProportionateScreenHeight(20.0)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                products.length,
                (index) => ProductCard(
                  product: products[index],
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(20.0)),
            ],
          ),
        ),
      ],
    );
  }
}
