import 'package:flutter/material.dart';
import 'package:shopease_ecommerce/components/custom_bottom_nav_bar.dart';
import 'package:shopease_ecommerce/enums.dart';
import 'package:shopease_ecommerce/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: const CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}