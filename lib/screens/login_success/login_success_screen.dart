import 'package:flutter/material.dart';
import 'components/body.dart';

class LoginSuccess extends StatelessWidget {
  static String routeName = '/login_success';
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