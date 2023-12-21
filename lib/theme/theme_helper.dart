import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Utils/pref_utils.dart';
import '../Utils/size_utils.dart';


/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  final _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    PrefUtils().setThemeData(_newTheme);
    Get.forceAppUpdate();
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              7,
            ),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Color(0XFFFFFFFF),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: appTheme.black90001,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(
              17,
            ),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return appTheme.blueGray100;
          }
          return colorScheme.onSurface;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 5,
        space: 5,
        color: colorScheme.primary,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.black90001,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.black90001,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.black90001,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: appTheme.black90001,
          fontSize: getFontSize(
            40,
          ),
          fontFamily: 'Caveat',
          fontWeight: FontWeight.w700,
        ),
        displaySmall: TextStyle(
          color: appTheme.black90001,
          fontSize: getFontSize(
            35,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        headlineLarge: TextStyle(
          color: appTheme.black900,
          fontSize: getFontSize(
            31,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: getFontSize(
            28,
          ),
          fontFamily: 'Jost',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: getFontSize(
            24,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        labelLarge: TextStyle(
          color: appTheme.black90001,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        labelSmall: TextStyle(
          color: appTheme.black90001,
          fontSize: getFontSize(
            9,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: appTheme.black90001,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appTheme.black90001,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFFEF18A2),
    primaryContainer: Color(0XFFFFFFFF),
    secondary: Color(0XFFFFFFFF),
    secondaryContainer: Color(0XFF005ABF),
    tertiary: Color(0XFFFFFFFF),
    tertiaryContainer: Color(0XFF005ABF),

    // Background colors
    background: Color(0XFFFFFFFF),

    // Surface colors
    surface: Color(0XFFFFFFFF),
    surfaceTint: Color(0XFF13008D),
    surfaceVariant: Color(0XFF005ABF),

    // Error colors
    error: Color(0XFF13008D),
    errorContainer: Color(0XFFFE0F00),
    onError: Color(0XFF378D00),
    onErrorContainer: Color(0XFFFFFFFF),

    // On colors(text colors)
    onBackground: Color(0XFF2E2E2E),
    onInverseSurface: Color(0XFF378D00),
    onPrimary: Color(0XFF13008D),
    onPrimaryContainer: Color(0XFF2E2E2E),
    onSecondary: Color(0XFF2E2E2E),
    onSecondaryContainer: Color(0XFF13008D),
    onTertiary: Color(0XFF2E2E2E),
    onTertiaryContainer: Color(0XFF13008D),

    // Other colors
    outline: Color(0XFF13008D),
    outlineVariant: Color(0XFFFFFFFF),
    scrim: Color(0XFFFFFFFF),
    shadow: Color(0XFF13008D),

    // Inverse colors
    inversePrimary: Color(0XFFFFFFFF),
    inverseSurface: Color(0XFF13008D),

    // Pending colors
    onSurface: Color(0XFF2E2E2E),
    onSurfaceVariant: Color(0XFF13008D),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF010102);
  Color get black90001 => Color(0XFF000000);

  // Blackd
  Color get black9006d => Color(0X6D101010);

  // Blue
  Color get blueA200 => Color(0XFF427AEA);

  // BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray400 => Color(0XFF888888);
  Color get blueGray900 => Color(0XFF333333);

  // DeepOrangef
  Color get deepOrange507f => Color(0X7FFFDEDE);

  // DeepPurple
  Color get deepPurple10077 => Color(0X77D1C9FF);
  Color get deepPurpleA200 => Color(0XFF9747FF);

  // Gray
  Color get gray100 => Color(0XFFF5F5F5);
  Color get gray200 => Color(0XFFECECEC);
  Color get gray20001 => Color(0XFFEEEEEE);
  Color get gray20002 => Color(0XFFF0F0F0);
  Color get gray20003 => Color(0XFFEBEBEB);
  Color get gray400 => Color(0XFFC4C4C4);
  Color get gray40001 => Color(0XFFAFAFAF);
  Color get gray40002 => Color(0XFFB3B3B3);
  Color get gray40003 => Color(0XFFC6C6C6);
  Color get gray40004 => Color(0XFFBFBFBF);
  Color get gray40005 => Color(0XFFBCBCBC);
  Color get gray40006 => Color(0XFFC9C9C9);
  Color get gray50 => Color(0XFFFFF4F4);
  Color get gray500 => Color(0XFFA6A6A6);
  Color get gray600 => Color(0XFF878783);
  Color get gray700 => Color(0XFF626161);
  Color get gray70001 => Color(0XFF555555);
  Color get gray800 => Color(0XFF4F4F4F);
  Color get gray80001 => Color(0XFF3B3B3B);
  Color get gray900 => Color(0XFF1E1E1E);

  // Green
  Color get greenA700 => Color(0XFF00D308);

  // Pink
  Color get pink400 => Color(0XFFDD2A7B);
  Color get pink50 => Color(0XFFFFD5F0);

  // Red
  Color get red500 => Color(0XFFFF3B3B);
  Color get redA700 => Color(0XFFFF0000);

  // Teal
  Color get teal900 => Color(0XFF002A55);
  Color get tealA700 => Color(0XFF00B59B);

  // White
  Color get whiteA700 => Color(0XFFFFFCFC);
  Color get whiteA70001 => Color(0XFFFFFEFE);

  // Yellow
  Color get yellowA700 => Color(0XFFFEDA00);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();