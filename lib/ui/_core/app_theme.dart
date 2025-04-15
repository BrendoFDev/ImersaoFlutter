import 'package:flutter/material.dart';
import 'package:myapp/ui/_core/app_colors.dart';

abstract class AppTheme {
  static ThemeData apptheme = ThemeData.dark().copyWith(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStatePropertyAll(Colors.black),
        backgroundColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return Colors.grey;
          } else if (states.contains(WidgetState.pressed)) {
            return const Color.fromARGB(255, 248, 206, 171);
          }
          return AppColors.mainColor;
        }),
      ),
    ),
  );
}
