import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show defaultTargetPlatform, TargetPlatform;
import 'package:flutter/services.dart';


extension ThemeExtension on BuildContext {
  ColorScheme get colorTheme => Theme.of(this).colorScheme;
  ThemeData get themeData => Theme.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

  double get statusBarHeight => MediaQuery.paddingOf(this).top;

  /// screen width
  double get sw => MediaQuery.sizeOf(this).width;

  /// screen height
  double get sh => MediaQuery.sizeOf(this).height;



  /// Sets system bars to light theme (dark icons)
  void setLightSystemBars({Color? statusBarColor, Color? navBarColor}) {
    _setSystemBars(
      statusBarBrightness: Brightness.light,
      statusBarColor: statusBarColor,
      navBarBrightness: Brightness.light,
      navBarColor: navBarColor,
    );
  }

  /// Sets system bars to dark theme (light icons)
  void setDarkSystemBars({Color? statusBarColor, Color? navBarColor}) {
    _setSystemBars(
      statusBarBrightness: Brightness.dark,
      statusBarColor: statusBarColor,
      navBarBrightness: Brightness.dark,
      navBarColor: navBarColor,
    );
  }

  /// Fully customizable system bars configuration
  void _setSystemBars({
    required Brightness statusBarBrightness,
    Brightness? navBarBrightness,
    Color? statusBarColor,
    Color? navBarColor,
  }) {
    final isAndroid = defaultTargetPlatform == TargetPlatform.android;

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        // Status Bar
        statusBarColor: statusBarColor ?? Colors.transparent,
        statusBarIconBrightness: statusBarBrightness,
        statusBarBrightness: statusBarBrightness,

        // Navigation Bar (Android only)
        systemNavigationBarColor: isAndroid
            ? (navBarColor ?? Colors.transparent)
            : null,
        systemNavigationBarIconBrightness: isAndroid
            ? (navBarBrightness ?? statusBarBrightness)
            : null,
        systemNavigationBarDividerColor: isAndroid
            ? Colors.transparent
            : null,
      ),
    );
  }

  /// Sets system bars colors based on background color brightness
  void autoSetSystemBars(Color backgroundColor) {
    final brightness = ThemeData.estimateBrightnessForColor(backgroundColor);
    if (brightness == Brightness.dark) {
      setLightSystemBars();
    } else {
      setDarkSystemBars();
    }
  }

}
