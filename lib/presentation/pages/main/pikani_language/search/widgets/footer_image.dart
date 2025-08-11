// footer_image.dart
import 'package:flutter/material.dart';
import 'package:pikani/core/extensions/theme_extension.dart';
import 'package:pikani/core/utils/assets.dart';

class FooterImage extends StatelessWidget {
  const FooterImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Image.asset(
        Assets.pikaniLanguageFooter,
        width: context.sw,
        fit: BoxFit.cover,
      ),
    );
  }
}
