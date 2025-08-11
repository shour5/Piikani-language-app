// greetings_grid.dart
import 'package:flutter/material.dart';
import 'package:pikani/domain/entities/vocabulry_category.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../search_cubit.dart';
import '../search_state.dart';
import 'category_card.dart';

class GreetingsGrid extends StatelessWidget {
  final SearchState state;
  final SearchCubit cubit;

  const GreetingsGrid({super.key, required this.state, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: state.filteredCategories.isEmpty
              ? Center(child: Text("No Data Found"))
              : ScrollablePositionedList.separated(
                  itemScrollController: cubit.itemScrollController,
                  itemPositionsListener: cubit.itemPositionsListener,
                  itemCount: state.filteredCategories.length,

                  itemBuilder: (context, index) {
                    final VocabularyCategory currentCategory =
                        state.filteredCategories[index];
                    return  CategoryCard(
                      category: currentCategory,
                      categoryIndex: index,
                      state: state,
                      cubit: cubit,
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(height: 10),
                ),
        ),
      ],
    );
  }
}