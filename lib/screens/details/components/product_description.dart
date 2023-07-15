import 'package:flutter/cupertino.dart';

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
            padding: padding
        )
      ],
    )
  }
}