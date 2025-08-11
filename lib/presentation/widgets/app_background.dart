import 'package:flutter/material.dart';
import 'package:pikani/core/extensions/theme_extension.dart';

import '../../core/utils/assets.dart';

class AppBackground extends StatelessWidget {
  final Widget child;

  const AppBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                Assets.header,
                fit: BoxFit.cover,
                width: context.sw,
              ),
            ),
            Expanded(
              flex: 10,
              child: Image.asset(
                Assets.bg,
                fit: BoxFit.cover,
                width: context.sw,
              ),
            ),
          ],
        ),
        Positioned.fill(child: SafeArea(bottom: false, child: child)),
      ],
    );
  }
}
