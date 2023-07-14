import 'package:flutter/material.dart';
import 'package:shopease_ecommerce/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight * 0.04
        ),
        Image.asset(
          'assets/images/success.png',
          height: SizeConfig.screenHeight * 0.4, // 40%
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.08,
        ),
        Text(
          'Login Success',
          style: TextStyle(
            fontSize: getProportionateScreenHeight(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: OutlinedButton(
            onPressed: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
            child: const Text(
              'Back to Home'
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}