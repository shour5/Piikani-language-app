import 'package:flutter/material.dart';
import 'package:pikani/core/extensions/theme_extension.dart';
import 'package:pikani/core/utils/constants.dart';

class ShortPhrasePikaniSection extends StatelessWidget {
  final String piikani;
  final VoidCallback? onTap;
  final TextStyle? textStyle;

  const ShortPhrasePikaniSection({
    super.key,
    required this.piikani,
    this.textStyle,

    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: kScreenPadding),
        color: context.colorTheme.onSecondary,
        child: Center(
          child: Text(
            piikani,
            style:
                textStyle ??
                context.textTheme.titleMedium?.copyWith(
                  letterSpacing: 0.8,
                  color: context.colorTheme.surface,
                ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
