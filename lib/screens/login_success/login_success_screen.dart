import 'package:flutter/material.dart';
import 'package:shopease_ecommerce/screens/login_success/components/body.dart';

class LoginSuccess extends StatelessWidget {
  const LoginSuccess({super.key});

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Text(
          'Login Success'
        ),
      ),
      body: Body(),
    );
  }
}