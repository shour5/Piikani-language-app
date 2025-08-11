import 'package:flutter/material.dart';
import 'package:pikani/core/extensions/theme_extension.dart';
import 'package:pikani/domain/entities/vocabulry_category.dart';
import '../search_cubit.dart';
import '../search_state.dart';

class ItemsGrid extends StatelessWidget {
  final List<VocabularyItem> items;
  final int categoryIndex;
  final String selectedSectionTitle;
  final SearchState state;
  final SearchCubit cubit;

  const ItemsGrid({
    super.key,
    required this.items,
    required this.categoryIndex,
    required this.selectedSectionTitle,
    required this.state,
    required this.cubit,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: cubit.gridController,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1.6,
      ),
      itemCount: items.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final text = items[index];
        final isHighlighted =
            (selectedSectionTitle == state.sectionName &&
                index == state.selectedSubCategoryIndex &&
                categoryIndex == state.selectedCategoryIndex);
        return ElevatedButton(
          onPressed: () {
            cubit.playWav(audioPath: items[index].assetPath);
            cubit.updateCategoriesIndex(index: categoryIndex);
            cubit.updateSectionName(title: selectedSectionTitle);
            cubit.updateSideCategoriesIndex(index: categoryIndex);
            cubit.updateSubCategoriesIndex(index: index);
            cubit.updateSectionTitle(title: items[index].translation);
            cubit.updateUserTapManually(tap: true);
            Future.delayed(Duration(seconds: 1), () {
              cubit.updateUserTapManually(tap: false);
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor:
                isHighlighted
                    ? context.colorTheme.tertiaryContainer
                    : context.colorTheme.surface,
            foregroundColor:
                isHighlighted ? context.colorTheme.surface : Colors.black,
            side: const BorderSide(color: Colors.black12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(
            text.english,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis, // Add this line
            style: context.textTheme.bodyLarge?.copyWith(
              fontSize: 18,
              fontWeight: isHighlighted ? FontWeight.w900 : FontWeight.w100,
              height: 20/18,
              color:
                  isHighlighted
                      ? context.colorTheme.surface
                      : context.colorTheme.onSurface,
          ),
        ));
      },
    );
  }
}
