import 'package:flutter/material.dart';
import 'package:pikani/core/extensions/theme_extension.dart';

class GirdViewItemButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback? onTap;

  const GirdViewItemButton({
    super.key,
    required this.text,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 150,
        height: 100,
        decoration: BoxDecoration(
          color: isSelected ? context.colorTheme.tertiaryContainer : context.colorTheme.surface,
          border: Border.all(color: context.colorTheme.onSurface),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: context.textTheme.bodyLarge?.copyWith(
              letterSpacing: 0.8,
              color: isSelected ? context.colorTheme.surface : null,
            ),
          ),
        ),
      ),
    );
  }
}
