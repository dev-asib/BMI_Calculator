import 'package:bmi_calculator/utils/app_exports.dart';

class AppThemes {


  static ThemeData appLightThemeData() {
    return ThemeData(
      brightness: Brightness.light,
      appBarTheme: appBarTheme(),
      scaffoldBackgroundColor: AppColors.appBackgroundColor,
      inputDecorationTheme: inputDecorationTheme(),
      elevatedButtonTheme: elevatedButtonThemeData(),
    );
  }

  static ThemeData appDarkThemeData() {
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: appBarTheme(),
      scaffoldBackgroundColor: AppColors.appBackgroundColor,
      inputDecorationTheme: inputDecorationTheme(),
      elevatedButtonTheme: elevatedButtonThemeData(),
    );
  }

  static ElevatedButtonThemeData elevatedButtonThemeData() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        backgroundColor: AppColors.appThemeColor,
        foregroundColor: AppColors.white,
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  static InputDecorationTheme inputDecorationTheme() {
    return InputDecorationTheme(
      filled: true,
      fillColor: AppColors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      hintStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppColors.appThemeColor,
      ),
      labelStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppColors.appThemeColor,
      ),
    );
  }

  static AppBarTheme appBarTheme() {
    return const AppBarTheme(
      backgroundColor: AppColors.appThemeColor,
      foregroundColor: AppColors.white,
      titleTextStyle: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      centerTitle: true,
      iconTheme: IconThemeData(
        size: 35,
        color: AppColors.white,
      ),
    );
  }

}
