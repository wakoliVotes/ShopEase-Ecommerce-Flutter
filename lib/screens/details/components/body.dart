import 'package:flutter/material.dart';
import 'package:shopease_ecommerce/components/default_button.dart';
import 'package:shopease_ecommerce/screens/details/components/colors_dots.dart';
import 'package:shopease_ecommerce/screens/details/components/product_description.dart';
import 'package:shopease_ecommerce/screens/details/components/product_images.dart';
import 'package:shopease_ecommerce/screens/details/components/top_rounded_container.dart';
import 'package:shopease_ecommerce/size_config.dart';

import '../../../models/Product.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({
    Key? key,
    required this.product
}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                  product: product,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                  color: const Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      ColorDots(
                        product: product
                      ),
                      TopRoundedContainer(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: SizeConfig.screenWidth! * 0.15,
                              right: SizeConfig.screenWidth! * 0.15,
                              bottom: getProportionateScreenWidth(40),
                              top: getProportionateScreenWidth(15),
                            ),
                            child: DefaultButton(
                              text: 'Add to Cart',
                              press: () {},
                            ),
                          )
                      )
                    ],
                  )
              )
            ],
          ),
        )
      ],
    );
  }
}