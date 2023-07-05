

import 'package:flutter/cupertino.dart';
import 'package:shopease_ecommerce/size_config.dart';

import 'sign_up_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight! * 0.04), // 4%
                  const Text(
                    'Complete your details or continue \nwith social media',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight! * 0.08,
                  ),
                  const SignUpForm(),
                  SizedBox(height: SizeConfig.screenHeight! * 008),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //TODO Add SocalCard
                    ],
                  )
                ],
              ),
            ),
          ),
      ),
    );
  }
}