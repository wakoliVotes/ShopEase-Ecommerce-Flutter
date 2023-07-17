// Author: Votes Wakoli
// Start Date: 4th July, 2023
// Project: E-Commerce Store With Flutter

import 'package:flutter/material.dart';
import 'package:shopease_ecommerce/routes.dart';
import 'package:shopease_ecommerce/screens/splash/splash_screen.dart';
import 'package:shopease_ecommerce/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ShopEase Store',
      theme: theme(),
      // Home: splashScreen(),
      // Using routeName so that there is no need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}