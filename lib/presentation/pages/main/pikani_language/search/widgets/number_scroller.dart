// number_scroller.dart
import 'package:flutter/material.dart';
import 'package:pikani/core/extensions/theme_extension.dart';
import 'package:pikani/domain/entities/vocabulry_category.dart';
import '../search_cubit.dart';
import '../search_state.dart';

class NumberScroller extends StatelessWidget {
  final SearchState state;
  final SearchCubit cubit;

  const NumberScroller({super.key, required this.state, required this.cubit});

  @override
  Widget build(BuildContext context) {
    final controller = ScrollController();

    return Container(
      width: MediaQuery.of(context).size.width / 8,
      color: const Color(0xFFD73F0F),
      child: ListView.builder(
        controller: controller,
        itemCount: state.categories.length,
        itemBuilder: (context, index) {
          final isSelected = index == state.sideCategoryIndex;

          return GestureDetector(
            onTap: () {
              cubit.itemScrollController.scrollTo(
                index: index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
              cubit.updateUserTapManually(tap: true);
              Future.delayed(const Duration(seconds: 1), () {
                cubit.updateUserTapManually(tap: false);
              });
              cubit.updateSideCategoriesIndex(index: index);
              cubit.searchController.clear();
              cubit.updateSubCategoriesIndex(index: 0);
              if (state.categories[index].sections.isEmpty) {
                cubit.updateSectionName(title: "");
                cubit.updateSections(sections: []);
                cubit.updateFilterSections(sections: []);
                cubit.updateSectionTitle(title: state.filteredCategories[index].translation);
                cubit.updateCurrentSections(sections: VocabularySection(title: "", items: []));
              } else {
                cubit.updateSectionName(title: state.categories[index].sections[0].title);
                cubit.updateSectionTitle(title: state.categories[index].sections[0].items[0].translation);
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Center(
                child: Text(
                  '${index + 1}',
                  style: context.textTheme.titleLarge?.copyWith(
                    fontWeight: isSelected ? FontWeight.w900 : FontWeight.w100,
                    color: isSelected ? context.colorTheme.surface : context.colorTheme.onSurface,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}