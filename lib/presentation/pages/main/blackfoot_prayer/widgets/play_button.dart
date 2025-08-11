import 'package:flutter/material.dart';
import 'package:pikani/core/extensions/theme_extension.dart';

class PlayButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const PlayButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: context.colorTheme.onSurface),
        ),
        child: Text(
          title,
          style: context.textTheme.bodyLarge?.copyWith(
            letterSpacing: 1.5,
            fontWeight: FontWeight.w600,
            height:1
          ),
        ),
      ),
    );
  }
}
