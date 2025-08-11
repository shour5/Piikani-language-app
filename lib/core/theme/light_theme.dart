import 'package:flutter/material.dart';

import '../routes/custom_page_transition_builder.dart';

/// Light Theme Colors
abstract class LightColors {
  // Core colors
  static const scaffoldBackground = Color(0xFfFFFFFF);
  static const surface = Color(0xFFFFFFFF);
  static const onSurface = Color(0xFF1d1a13);
  static final card = Color(0xFFFFF9F7);
  // Primary colors
  static const primary = Color(0xFFd93e06);
  static const onPrimary = Color(0xFFFFFFFF);

  // Secondary colors
  static const secondary = Color(0xFF11404C);
  static const onSecondary = Color(0xff0e223b);

  // Tertiary colors
  static const tertiary = Color(0xff737373);
  static const onTertiary = Color(0xFF242424);
  static const tertiaryContainer = Color(0xFF484848);
  static const tertiaryFixed = Color(0xFF04249a);



  // Additional colors
  static const divider = Color(0xFFF0F0F0);
  static const error = Color(0xFFB00020);
  static const onError = Color(0xFFFFFFFF);
}

/// Light Theme Text Styles
abstract class LightTextStyles {
  static TextTheme get textTheme {
    return TextTheme(
      displayLarge: TextStyle(
        fontSize: 57.0,
        height: 64.0 / 57.0,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.25,
        color: LightColors.onSurface,
      ),
      displayMedium: TextStyle(
        fontSize: 45.0,
        height: 52.0 / 45.0,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.0,
        color: LightColors.onSurface,
      ),
      displaySmall: TextStyle(
        fontSize: 36.0,
        height: 44.0 / 36.0,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.0,
        color: LightColors.onSurface,
      ),
      headlineLarge: TextStyle(
        fontSize: 32.0,
        height: 40.0 / 32.0,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.0,
        color: LightColors.onSurface,
      ),
      headlineMedium: TextStyle(
        fontSize: 28.0,
        height: 36.0 / 28.0,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.0,
        color: LightColors.onSurface,
      ),
      headlineSmall: TextStyle(
        fontSize: 24.0,
        height: 32.0 / 24.0,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.0,
        color: LightColors.onSurface,
      ),
      titleLarge: TextStyle(
        fontSize: 22.0,
        height: 28.0 / 22.0,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.0,
        color: LightColors.onSurface,
      ),
      titleMedium: TextStyle(
        fontSize: 18.0,
        height: 24.0 / 18.0,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
        color: LightColors.onSurface,
      ),
      titleSmall: TextStyle(
        fontSize: 16.0,
        height: 20.0 / 16.0,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
        color: LightColors.tertiaryContainer,
      ),
      bodyLarge: TextStyle(
        fontSize: 16.0,
        height: 24.0 / 16.0,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
        color: LightColors.onSurface,
      ),
      bodyMedium: TextStyle(
        fontSize: 14.0,
        height: 20.0 / 14.0,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
        color: LightColors.tertiaryContainer,
      ),
      bodySmall: TextStyle(
        fontSize: 12.0,
        height: 16.0 / 12.0,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
        color: LightColors.tertiary,
      ),
      labelLarge: TextStyle(
        fontSize: 14.0,
        height: 20.0 / 14.0,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
        color: LightColors.onSurface,
      ),
      labelMedium: TextStyle(
        fontSize: 12.0,
        height: 16.0 / 12.0,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
        color: LightColors.onSurface,
      ),
      labelSmall: TextStyle(
        fontSize: 11.0,
        height: 16.0 / 11.0,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
        color: LightColors.onSurface,
      ),
    );
  }

  static const appBarTitle = TextStyle(
    color: LightColors.onSurface,
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );

  static const bottomNavUnselected = TextStyle(
    fontSize: 10,
    color: LightColors.tertiary,
  );

  static const bottomNavSelected = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 10,
    color: LightColors.primary,
  );
}

/// Light Theme
final ThemeData lightTheme = ThemeData(
  useMaterial3: false,
  scaffoldBackgroundColor: LightColors.scaffoldBackground,
  fontFamily: 'Gloucester',
  textTheme: LightTextStyles.textTheme,
  primaryColor: LightColors.primary,
  // Color Scheme
  colorScheme: const ColorScheme.light(
    primary: LightColors.primary,
    onPrimary: LightColors.onPrimary,
    secondary: LightColors.secondary,
    onSecondary: LightColors.onSecondary,
    surface: LightColors.surface,
    onSurface: LightColors.onSurface,
    tertiary: LightColors.tertiary,
    onTertiary: LightColors.onTertiary,
    tertiaryContainer: LightColors.tertiaryContainer,
    tertiaryFixed: LightColors.tertiaryFixed,
    error: LightColors.error,
    onError: LightColors.onError,
  ),

  // Component Themes
  appBarTheme: AppBarTheme(
    backgroundColor: LightColors.scaffoldBackground,
    elevation: 0,
    titleTextStyle: LightTextStyles.appBarTitle,
    iconTheme: const IconThemeData(color: LightColors.onSurface),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: LightColors.primary,
      foregroundColor: LightColors.onPrimary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
  ),
  cardColor: LightColors.card,
  cardTheme:  CardThemeData(
    color: LightColors.card,
    elevation: 1,
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
  ),

  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: LightColors.scaffoldBackground,
    selectedItemColor: LightColors.primary,
    unselectedItemColor: LightColors.tertiary,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
    unselectedLabelStyle: LightTextStyles.bottomNavUnselected,
    selectedLabelStyle: LightTextStyles.bottomNavSelected,
  ),

  dividerTheme: const DividerThemeData(
    color: LightColors.divider,
    thickness: 1,
    space: 1,
  ),

  pageTransitionsTheme: PageTransitionsTheme(
    builders: {
      TargetPlatform.android: CustomPageTransitionsBuilder(),
      TargetPlatform.iOS: CustomPageTransitionsBuilder(),
      TargetPlatform.macOS: CustomPageTransitionsBuilder(),
      TargetPlatform.windows: CustomPageTransitionsBuilder(),
    },
  ),
);
