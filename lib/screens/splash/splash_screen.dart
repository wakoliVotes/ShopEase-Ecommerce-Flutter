import 'package:flutter/material.dart';
import 'package:shopease_ecommerce/screens/splash/components/body.dart';
import 'package:shopease_ecommerce/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = '/splash';

  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // Call it in starting screen
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}