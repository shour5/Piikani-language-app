// section_widget.dart
import 'package:flutter/material.dart';
import 'package:pikani/domain/entities/vocabulry_category.dart';
import '../search_cubit.dart';
import '../search_state.dart';
import 'items_grid.dart';

class SectionWidget extends StatelessWidget {
  final VocabularySection section;
  final int categoryIndex;
  final SearchState state;
  final SearchCubit cubit;

  const SectionWidget({
    super.key,
    required this.section,
    required this.categoryIndex,
    required this.state,
    required this.cubit,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, bottom: 4),
          child: Text(section.title),
        ),
        ItemsGrid(
          items: section.items,
          categoryIndex: categoryIndex,
          selectedSectionTitle: section.title,
          state: state,
          cubit: cubit,
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
