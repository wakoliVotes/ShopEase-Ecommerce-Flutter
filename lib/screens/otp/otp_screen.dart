import 'package:flutter/material.dart';
import 'package:shopease_ecommerce/size_config.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = '/otp';

  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'OTP Verification'
        ),
      ),
    );
  }
}