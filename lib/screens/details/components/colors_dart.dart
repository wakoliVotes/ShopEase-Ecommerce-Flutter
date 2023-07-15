

import 'package:flutter/material.dart';
import 'package:shopease_ecommerce/constants.dart';
import 'package:shopease_ecommerce/size_config.dart';

import '../../../models/Product.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.product,
}) : super (key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
              (index) => ColorDot(
                color: product.colors[index],
                isSelected: index == selectedColor
              ),
          ),
          Spacer(),
          RoundedIconBtn(
            icon: Icons.remove,
            PRESS: () {},
          ),
          SizedBox(
            width: getProportionateScreenWidth(20),
            RoundedIconBtn(
              icon: Icons.add,
              showShadow: true,
              press: () {},
          )
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
}) : super (key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build (BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
      height: getProportionateScreenHeight(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border:
          Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
        shape: BoxShape.circle,
      ),
      child: Decoration(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        )
      ),
    );
  }
}