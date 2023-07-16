import 'package:flutter/cupertino.dart';
import 'package:shopease_ecommerce/size_config.dart';

class SocalCard extends StatelessWidget {
  const SocalCard({
    Key? key,
    this.icon,
    this.press,
}) : super(key: key);
  
  final String? icon;
  final Function? press;
  

  @override
  Widget build( BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?,
      child: Container(
        margin: 
        EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        width: getProportionateScreenWidth(40),
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle
        ),
        child: Image.asset(
          icon!
        ),
      ),
    );
  }
}