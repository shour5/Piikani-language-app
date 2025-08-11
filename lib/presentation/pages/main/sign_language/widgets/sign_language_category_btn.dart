import 'package:flutter/material.dart';
import 'package:pikani/core/extensions/theme_extension.dart';

class SignLanguageCategoryBtn extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback? onTap;
  const SignLanguageCategoryBtn({
    super.key,
    required this.title,
    required this.image,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        spacing: 8,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(image, width: 100),
          Text(
            title,
            style: context.textTheme.bodyMedium?.copyWith(letterSpacing: 1),
          ),
        ],
      ),
    );
  }
}
