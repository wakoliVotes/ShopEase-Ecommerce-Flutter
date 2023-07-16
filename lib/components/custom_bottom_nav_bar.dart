import 'package:flutter/material.dart';
import 'package:shopease_ecommerce/constants.dart';

import '../enums.dart';
import '../screens/profile/profile_screen.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor = Color(0xFFB6B6B6);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -15),
              blurRadius: 20,
              color: const Color(0xFFDADADA).withOpacity(0.15),
            )
          ],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          )),
      child: SafeArea(
        top: false,
        child: Row(
          children: [
            IconButton.outlined(
              onPressed: () =>
                  Navigator.pushNamed(context, HomeScreen.routeName),
              icon: const Icon(
                Icons.shop,
                color: Color(0xFFFF0000),
              ),
              color: MenuState.home == selectedMenu
                  ? kPrimaryColor
                  : inActiveIconColor,
            ),
            IconButton.outlined(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: Color(0xFFFF0000),
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.chat_bubble,
                  color: Color(0xFFFF0000),
                )),
            IconButton(
                onPressed: () =>
                Navigator.pushNamed(context, ProfileScreen.routeName)
                ,
                icon: Icon(Icons.person,
                    color: MenuState.profile == selectedMenu
                        ? kPrimaryColor
                        : inActiveIconColor)
            )
          ],
        ),
      ),
    );
  }
}
