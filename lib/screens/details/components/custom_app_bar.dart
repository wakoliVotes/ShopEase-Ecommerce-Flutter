import 'package:flutter/material.dart';
import 'package:shopease_ecommerce/constants.dart';
import 'package:shopease_ecommerce/size_config.dart';

class CustomAppBar extends StatelessWidget {
  final double rating;

  const CustomAppBar({super.key,  required this.rating});

  // AppBar().preferredSize.height provide us the height that apply on our app bar
Size get prefferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Row(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(40),
                width: getProportionateScreenWidth(40),
                child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: kPrimaryColor, shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.zero,
                ),
                  onPressed: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 15,
                  ),
                )
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  children: [
                    Text(
                        "$rating",
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.star
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}