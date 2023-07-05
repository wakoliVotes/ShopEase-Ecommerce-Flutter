import 'package:flutter/cupertino.dart';
import 'package:shopease_ecommerce/constants.dart';
import 'package:shopease_ecommerce/size_config.dart';

class SplashContent extends StatelessWidget {
    const SplashContent({
      required Key key,
      required this.text,
      required this.image,
    }): super(key: key);

    final String text, image;

    @override
    Widget build(BuildContext context) {
      return Column(
        children:<Widget> [
          const Spacer(),
          Text(
            'ShopEase',
            style: TextStyle(
              fontSize: getProportionateScreenWidth(36),
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            text,
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          Image.asset(
            image,
            height: getProportionateScreenHeight(265),
            width: getProportionateScreenWidth(235),
          )
        ],
      );

  }


}