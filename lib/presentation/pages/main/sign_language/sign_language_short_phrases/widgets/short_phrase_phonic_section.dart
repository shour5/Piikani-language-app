import 'package:flutter/material.dart';
import 'package:pikani/core/extensions/theme_extension.dart';
import 'package:pikani/core/utils/constants.dart';

class ShortPhrasePhonicSection extends StatelessWidget {
  final String phonic;
  final VoidCallback? onTap;

  const ShortPhrasePhonicSection({super.key, required this.phonic, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: kScreenPadding),
        color: context.colorTheme.surface,
        width: context.sw,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            // Text(
            //   "Phonics",
            //   style: context.textTheme.bodyMedium?.copyWith(
            //     color: context.colorTheme.primary,
            //     letterSpacing: 0.5,
            //   ),
            // ),
            Center(
              child: Text(
                "${phonic}",
                style: context.textTheme.titleMedium?.copyWith(
                  letterSpacing: 0.8,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
