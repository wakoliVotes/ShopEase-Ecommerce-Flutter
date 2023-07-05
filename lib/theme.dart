

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';


ThemeData theme(){
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Muli',
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme(){
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: kTextColor),
    gapPadding: 10,
  );

  return InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
      enabledBorder: outlineInputBorder,
    focusColor: const Color(0xFF757575),
    border: outlineInputBorder
    );
}
TextTheme textTheme(){
  return const TextTheme(
    bodyLarge: TextStyle(color: kTextColor),
    bodyMedium: TextStyle(color: kTextColor)
  );
}

AppBarTheme appBarTheme(){
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    iconTheme: const IconThemeData(color: Colors.black),
      systemOverlayStyle: SystemUiOverlayStyle.dark, toolbarTextStyle: const TextTheme(
      titleLarge: TextStyle(
          color: Color(0XFF8B8B8B),
        fontSize: 18
      )
    ).bodyMedium, titleTextStyle: const TextTheme(
      titleLarge: TextStyle(
          color: Color(0XFF8B8B8B),
        fontSize: 18
      )
    ).titleLarge
  );
}