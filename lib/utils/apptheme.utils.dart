import 'package:flutter/material.dart';
import 'package:flutter_custom_context_menu/utils/colors.utils.dart';

/// AppTheme: Centralized styling and color scheme for the app
class AppTheme {
  static final lightTheme = ThemeData(
    useMaterial3: true,
    // primarySwatch: Colors.deepPurple,
    // scaffoldBackgroundColor: MyClr.whiteClr,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: const BorderSide(color: MyClr.greyClr),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: const BorderSide(color: MyClr.greyClr),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: const BorderSide(color: MyClr.greyClr),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        // borderSide: const BorderSide(width: 2),
      ),
    ),
  );
}
