import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopease_ecommerce/constants.dart';
import 'package:shopease_ecommerce/size_config.dart';

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    Key? key,
    required this.icon,
    required this.press,
    this.showShadow = false,
}) : super (key: key);

  final IconData icon;
  final GestureTapCallback press;
  final bool showShadow;

  @override
  Widget build (BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          if (showShadow)
            BoxShadow(
              offset: Offset(0, 6),
              blurRadius: 10,
              color: Color(0xFFB0BOB0).withOpacity(0.2),
            )
        ]
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          primary: kPrimaryColor,
          backgroundColor: Colors.white,
          shape: 
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        ),
        onPressed: press,
        child: Icon(icon),
      ),
      
    );
  }
}