import 'package:flutter/material.dart';
import 'package:shopease_ecommerce/constants.dart';
import 'package:shopease_ecommerce/screens/forgot_password/components/body.dart';
import 'package:shopease_ecommerce/size_config.dart';

class ForgotPasswordScreen extends StatelessWidget {

  const Body({super.key});

  static String routeName = '/forgot_password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Forgot Password'
        ),
      ),
      body: Body(),
    );
  }