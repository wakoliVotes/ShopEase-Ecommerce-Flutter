
import 'package:flutter/material.dart';
import 'package:shopease_ecommerce/components/default_button.dart';
import 'package:shopease_ecommerce/constants.dart';
import 'package:shopease_ecommerce/screens/splash/components/splash_content.dart';
import 'package:shopease_ecommerce/size_config.dart';

import '../../sign_in/sign_in_screen.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  _BodyState createState() => _BodyState();

}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to ShopEase, Let's Shop",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "We help people connect with store \naround the Globe",
      'image': 'asser/images/splash_2.png'
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      'image': 'asser/images/splash_3.png'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children:<Widget> [
              Expanded(
                  flex: 3,
                  child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                      itemCount: splashData.length,
                      itemBuilder: (context, index) => SplashContent(
                          image: splashData[index]['image'],
                        text: splashData[index]['text'],
                      )
                  ),
              ),
              Expanded(
                flex: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20),
                    ),
                    child: Column(
                      children: <Widget> [
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                              splashData.length,
                                  (index) => buildDot(index: index),
                          ),
                        ),
                        const Spacer(flex: 3),
                        DefaultButton(
                          text: "Continue",
                            press: () {
                              Navigator.pushNamed(context, SignInScreen.routeName);
                            },
                        ),
                        const Spacer(),
                      ],
                    ),
                  )
              )
            ],
          ),
        )
    );
  }

AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
        duration: kThemeAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : const Color(0x00ffd8d8),
        borderRadius: BorderRadius.circular(3)
      ),
    );
  }
}