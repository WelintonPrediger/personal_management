import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.indigo,
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      backgroundColor: Colors.indigo,
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
  );

  final darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.orange,
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      backgroundColor: Colors.grey,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
  );
}
