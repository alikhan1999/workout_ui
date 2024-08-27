import 'package:azz_medical_web/constant/style.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData buildTheme() {
    return ThemeData(
      fontFamily: "Poppins",
      textTheme: const TextTheme(
        titleMedium: TextStyle(
          fontFamily: 'Poppins', // Use your custom font here
          fontSize: 16.0, // Adjust the font size as needed
        ),
        titleSmall: TextStyle(
          fontFamily: 'Poppins', // Use your custom font here
          fontSize: 16.0, // Adjust the font size as needed
        ),
        titleLarge: TextStyle(
          fontFamily: 'Poppins', // Use your custom font here
          fontSize: 16.0, // Adjust the font size as needed
        ),
        headlineLarge: TextStyle(
          fontFamily: 'Poppins', // Use your custom font here
          fontSize: 16.0, // Adjust the font size as needed
        ),
        headlineMedium: TextStyle(
          fontFamily: 'Poppins', // Use your custom font here
          fontSize: 16.0, // Adjust the font size as needed
        ),
        headlineSmall: TextStyle(
          fontFamily: 'Poppins', // Use your custom font here
          fontSize: 16.0, // Adjust the font size as needed
        ),
      ),
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Style.whiteColor),
          backgroundColor: Style.blueColor),
      scaffoldBackgroundColor: Style.primaryColor,
      timePickerTheme: TimePickerThemeData(
          hourMinuteTextColor: Style.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          )),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Style.primaryColor),
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      colorScheme: const ColorScheme.light(
          background: Style.scaffoldBackground,
          secondary: Style.accentColor,
          primary: Style.primaryColor,
          brightness: Brightness.light),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
        side: const BorderSide(color: Style.accentColor),
        fillColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return Colors.teal;
          }
          return null;
        }),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return Colors.teal;
          }
          return null;
        }),
      ),
      // switchTheme: SwitchThemeData(
      //   thumbColor: MaterialStateProperty.resolveWith<Color?>(
      //       (Set<MaterialState> states) {
      //     if (states.contains(WidgetState.disabled)) {
      //       return null;
      //     }
      //     if (states.contains(WidgetState.selected)) {
      //       return Colors.green;
      //     }
      //     return null;
      //   }),
      //   trackColor:
      //       WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
      //     if (states.contains(WidgetState.disabled)) {
      //       return null;
      //     }
      //     if (states.contains(MaterialState.selected)) {
      //       return Colors.green;
      //     }
      //     return null;
      //   }),
      // ),
    );
  }
}
