import 'package:flutter/material.dart';

class AppColors {
  static const Color white = Colors.white;
  static const Color red = Colors.red;
  static const Color blue = Colors.blue;
  static const Color pink = Colors.pink;
  static const Color black = Colors.black;
  static const Color greenlight = Color(0XFFE8F5E9) ;
  static const Color darkBackground = Color(0XFF424242);
  static const Color darkRed = Colors.deepOrange;
  static const Color darkLabelColor = Colors.grey;
  static const Color darkCustomColor = Colors.teal;
  static const Color LabelColor = Color(0XFF000000);
  static const Color customColor = Color(0xFFEF18A2);

  // New color for icon in light mode
  static const Color iconColorLight = Colors.black; // Adjust the color as needed

  // New color for icon in dark mode
  static const Color iconColorDark = Colors.white; // Adjust the color as needed
}




class CustomTextheading {
  static TextStyle headlineMedium(bool isDarkMode) {
    return TextStyle(
      color: isDarkMode ? AppColors.darkCustomColor : AppColors.customColor,
      fontFamily: 'Jost',
      fontWeight: FontWeight.w700,
      fontSize: 28.0,
    );
  }
}

class labelText {
  static TextStyle Lebl_Text(bool isDarkMode) {
    return TextStyle(
      color: isDarkMode ? AppColors.darkLabelColor : AppColors.LabelColor,
      fontWeight: FontWeight.w600,
      fontSize: 18,
      fontFamily: 'Poppins',
    );
  }
}


class InputText {
  static TextStyle Input_Text(bool isDarkMode) {
    return TextStyle(
      color: isDarkMode ? AppColors.darkLabelColor : AppColors.LabelColor,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      fontFamily: 'Poppins',
    );
  }
}

class HintText {
  static TextStyle hint_Text(bool isDarkMode) {
    return TextStyle(
      color: isDarkMode ? AppColors.darkLabelColor : AppColors.LabelColor,
      fontWeight: FontWeight.w300,
      fontSize: 14,
      fontFamily: 'Poppins',
    );
  }
}

class ButtonText {
  static TextStyle button_Text(bool isDarkMode) {
    return TextStyle(
      color: AppColors.white,
      fontWeight: FontWeight.w700,
      fontSize: 14,
      fontFamily: 'Jost',
    );
  }
}

class HilightText {
  static TextStyle hilight_Text(bool isDarkMode) {
    return TextStyle(
      color: isDarkMode ? AppColors.darkCustomColor : AppColors.pink,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      fontFamily: 'Jost',
    );
  }
}

class ClickText {
  static TextStyle Click_Text(bool isDarkMode) {
    return TextStyle(
      color: AppColors.blue,
      fontWeight: FontWeight.w500,
      decoration: TextDecoration.underline,
      fontSize: 16,
      fontFamily: 'Poppins',
    );
  }
}
//
// class AppTheme {
//   static ThemeData getTheme() {
//     return ThemeData(
//       primaryColor: AppColors.white, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColors.red), // Set your accent color
//       // Add other theme properties as needed
//       // Example: textTheme, buttonTheme, etc.
//     );
//   }
// }
class AppTheme {
  static ThemeData getTheme(bool isDarkMode) {
    return isDarkMode ? darkTheme : lightTheme;
  }

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.pink, // Set the background color for light mode
    // You can use AppColors for other theme properties as needed
    textTheme: TextTheme(
      titleLarge: CustomTextheading.headlineMedium(false),
      // Add other text styles using AppColors
    ),
    iconTheme: IconThemeData(
      color: AppColors.iconColorLight, // Set the icon color for light mode
    ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColors.red).copyWith(background: AppColors.white),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.darkBackground, // Set the background color for dark mode
    // You can use dark variants of colors in dark theme
    textTheme: TextTheme(
      titleLarge: CustomTextheading.headlineMedium(true),
      // Add other text styles using dark variants of AppColors
    ),
    iconTheme: IconThemeData(
      color: AppColors.iconColorDark, // Set the icon color for dark mode
    ), colorScheme: ColorScheme.dark().copyWith(secondary: AppColors.pink).copyWith(background: AppColors.darkBackground),
  );
}
