// category_card.dart
import 'package:flutter/material.dart';
import 'package:pikani/core/extensions/theme_extension.dart';
import 'package:pikani/domain/entities/vocabulry_category.dart';
import '../search_cubit.dart';
import '../search_state.dart';
import 'section_widget.dart';
import 'items_grid.dart';

class CategoryCard extends StatelessWidget {
  final VocabularyCategory category;
  final int categoryIndex;
  final SearchState state;
  final SearchCubit cubit;

  const CategoryCard({
    super.key,
    required this.category,
    required this.categoryIndex,
    required this.state,
    required this.cubit,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.grey[200],
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(vertical: 6),
          padding: const EdgeInsets.all(12),
          child: Text(
            category.title,
            style: context.textTheme.titleLarge?.copyWith(
              color: context.colorTheme.onSurface,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 12),
        category.sections.isNotEmpty
            ? Column(
              children:
                  category.sections
                      .map(
                        (section) => SectionWidget(
                          section: section,
                          categoryIndex: categoryIndex,
                          state: state,
                          cubit: cubit,
                        ),
                      )
                      .toList(),
            )
            : ItemsGrid(
              items: category.actionList,
              categoryIndex: categoryIndex,
              selectedSectionTitle: "",
              state: state,
              cubit: cubit,
            ),
      ],
    );
  }
}
