import 'package:flutter/material.dart';
import 'package:pikani/core/extensions/theme_extension.dart';
import '../search_state.dart';

class TitleSection extends StatelessWidget {
  final SearchState state;

  const TitleSection({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFF0F223C),
      padding: const EdgeInsets.all(12),
      child: Center(
        child: Text(
          state.selectedSectionTitle,
          style: context.textTheme.titleLarge?.copyWith(
            color: context.colorTheme.surface,
          ),
        ),
      ),
    );
  }
}
