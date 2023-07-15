import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopease_ecommerce/constants.dart';
import 'package:shopease_ecommerce/size_config.dart';

import '../../../models/Product.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,
    this.pressOnSeeMore,
}) : super (key: key);

  final Product product;
  final GestureTapCallback? pressOnSeeMore;

  @override
  Widget build (BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding:
            EdgeInsets.all(getProportionateScreenWidth(20)),
          child: Text(
            product.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(15)),
            width: getProportionateScreenWidth(64),
            decoration: BoxDecoration(
              color:
                product.isFavorite ? const Color(0xFFFFE6E6) : const Color(0xFFF5F6F9),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              )
            ),
            child: Icon(
              Icons.favorite,
              color: product.isFavorite ? const Color(0x0fff4848) : const Color(0xFFDBDEE4),
            )
          ),
        ),
        Padding(
            padding: EdgeInsets.only(
              left: getProportionateScreenWidth(20),
              right: getProportionateScreenWidth(64)
            ),
          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),
        Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
              vertical: 10,
            ),
          child: GestureDetector(
            onTap: () {},
            child: const Row(
              children: [
                Text(
                  'See More Detail',
                      style: TextStyle(
                        fontWeight: FontWeight.w600, color: kPrimaryColor
                      ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: kPrimaryColor,
                )
              ],
            ),
          ),
        )

      ],
    );
  }
}