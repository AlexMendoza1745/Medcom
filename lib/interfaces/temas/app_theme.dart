import 'package:flutter/material.dart';

class appTheme {
  static final ThemeData ligth = ThemeData.light().copyWith(
      inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: Colors.amber),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.amberAccent),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)))));
}
