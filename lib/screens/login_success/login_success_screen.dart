import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopease_ecommerce/screens/login_success/components/body.dart';

class LoginSuccess extends StatelessWidget {
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