import 'package:flutter/material.dart';
import 'package:pikani/core/extensions/theme_extension.dart';
import 'package:pikani/core/utils/assets.dart';

class MenuButtonTile extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback? onTap;
  final String? icon;

  const MenuButtonTile({
    super.key,
    required this.title,
    this.isSelected = false,
    this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: IntrinsicHeight(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          constraints: BoxConstraints(maxWidth: context.sw),
          decoration: BoxDecoration(
            border: Border.all(
              color:
                  isSelected
                      ? context.colorTheme.primary
                      : context.colorTheme.secondary.withValues(alpha: 0.5),
              width: isSelected?3:2.5,
            ),
            color: context.colorTheme.onSurface.withValues(alpha: 0.6),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            spacing: 20,
            children: [
              if (icon != null)
                Container(
                  height: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: context.colorTheme.onSurface.withValues(alpha: 0.5),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    ),
                  ),
                  child: Image.asset(icon!, width: 30),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  title,
                  style: context.textTheme.headlineSmall?.copyWith(
                    letterSpacing: 2,
                    color: context.colorTheme.surface,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
