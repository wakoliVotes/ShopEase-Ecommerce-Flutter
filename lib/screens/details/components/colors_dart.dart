

import 'package:flutter/cupertino.dart';
import 'package:shopease_ecommerce/size_config.dart';

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
  final ool isSelected;

  @override



}
