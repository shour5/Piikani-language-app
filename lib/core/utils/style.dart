import 'package:flutter/material.dart';
import 'package:pikani/core/extensions/theme_extension.dart';

class AppStyle {
  static TextStyle? bodyDescriptionStyle(BuildContext context) {
    return context.textTheme.titleMedium?.copyWith(
      letterSpacing: 0.5,
    );
  }

  static Shadow textShadow(){
    return  Shadow(
      color: Colors.black.withOpacity(0.4), // Light blackish shadow
      blurRadius: 5.0, // Soft blur
      offset: Offset(1.0, 2.0), // Positioned slightly down and to the right
    );
  }
}
