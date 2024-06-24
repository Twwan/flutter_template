import 'package:flutter/material.dart';
import 'package:flutter_mvvm/ui/theme/colors.dart';

const _primaryColor = AppColors.white;

ThemeData lightTheme() => ThemeData(
      useMaterial3: true,
      primaryColor: _primaryColor,
      scaffoldBackgroundColor: AppColors.white,
      colorScheme: ColorScheme.fromSeed(
        seedColor: _primaryColor,
        brightness: Brightness.light,
        onBackground: AppColors.black,
        primaryContainer: AppColors.whiteContainer,
      ),
    );

ThemeData darkTheme() => ThemeData(
      useMaterial3: true,
      primaryColor: _primaryColor,
      scaffoldBackgroundColor: AppColors.black,
      colorScheme: ColorScheme.fromSeed(
        seedColor: _primaryColor,
        brightness: Brightness.dark,
        onBackground: AppColors.white,
        primaryContainer: AppColors.grayContainer,
      ),
      iconTheme: const IconThemeData(color: AppColors.white),
    );

const TextTheme textTheme = TextTheme(
  displayLarge: TextStyle(
    fontFamily: 'Poppins',
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 24,
  ),
  displayMedium: TextStyle(
    fontFamily: 'Poppins',
    color: AppColors.gray,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  ),
);

// example:

// final theme = Theme.of(context);

// Text(
//   appLocalizations.smth,
//   style: theme.textTheme.displayLarge,
//   textAlign: TextAlign.center,
// ),

// l10n - for appLocalizations