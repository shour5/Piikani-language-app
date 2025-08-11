import 'package:flutter/material.dart';
import 'package:pikani/core/extensions/theme_extension.dart';
import 'package:pikani/domain/entities/vocabulry_category.dart';

/// Reusable Card Widget
class VocabularyCard extends StatelessWidget {
  final VocabularyCategory category;
  final VoidCallback onTap;

  const VocabularyCard({required this.category, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 1,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Fixed height for the image, ensuring uniform size
            Image.asset(category.imageUrl, fit: BoxFit.cover),
            Expanded(
              child: Center(
                child: Text(
                  category.title,
                  style: context.textTheme.bodyLarge?.copyWith(fontSize: 18),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  // Ensures text will wrap if necessary
                  overflow: TextOverflow.ellipsis,
                  // Prevents overflow
                  softWrap: true, // Ensures text wraps to the next line
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
