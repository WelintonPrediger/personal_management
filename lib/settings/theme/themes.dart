import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

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
    textTheme: GoogleFonts.aBeeZeeTextTheme().apply(),
    colorScheme: const ColorScheme.dark(
      primary: Colors.indigo,
      error: Colors.red,
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
    textTheme: GoogleFonts.aBeeZeeTextTheme().apply(
      bodyColor: Colors.white
    ),
    colorScheme: const ColorScheme.dark(
      primary: Colors.orange,
      error: Colors.red,
    ),
    switchTheme: SwitchThemeData(
      trackColor: MaterialStateProperty.all(Colors.orange.withOpacity(.5)),
      thumbColor: MaterialStateProperty.all(Colors.orange)
    )
  );
}
