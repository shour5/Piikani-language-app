import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikani/presentation/widgets/app_background.dart';
import 'package:pikani/presentation/widgets/custom_app_bar.dart';
import 'package:pikani/presentation/widgets/vocabulry_card.dart';
import '../../../../../core/utils/constants.dart';
import 'vocabulary_category_details/vocabulary_category_details_initial_params.dart';
import 'vocabulary_cubit.dart';
import 'vocabulary_initial_params.dart';
import 'vocabulary_state.dart';

class VocabularyPage extends StatefulWidget {
  final VocabularyCubit cubit;
  final VocabularyInitialParams initialParams;

  static const path = '/vocabulary';

  const VocabularyPage({
    Key? key,
    required this.cubit,
    required this.initialParams,
  }) : super(key: key);

  @override
  State<VocabularyPage> createState() => _VocabularyState();
}

class _VocabularyState extends State<VocabularyPage> {
  VocabularyCubit get cubit => widget.cubit;

  @override
  void initState() {
    super.initState();
    cubit.navigator.context = context;
    cubit.onInit(widget.initialParams);
  }

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: BlocBuilder<VocabularyCubit, VocabularyState>(
        bloc: cubit,
        builder: (context, state) {
          final categories = state.categories;
          final rowCount = (categories.length / 3).ceil();
          return Scaffold(
            backgroundColor: Colors.transparent,
            appBar: CustomAppBar(
              title: "Vocabulary",
              subTitle: "Aanistoohp'opistsi",
            ),
            body: ListView.builder(
              padding: EdgeInsets.symmetric(
                horizontal: kScreenPadding - 15,
              ).copyWith(bottom: 30,top: kScreenPadding),
              itemCount: rowCount,
              itemBuilder: (context, rowIndex) {
                final startIndex = rowIndex * 3;
                final endIndex = (startIndex + 3).clamp(0, categories.length);
                final rowItems = categories.sublist(startIndex, endIndex);

                return Column(
                  children: [
                    SizedBox(
                      height: 170, // Adjust as needed
                      child: Row(
                        children: List.generate(3, (i) {
                          if (i < rowItems.length) {
                            final category = rowItems[i];
                            return Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(7.5),
                                child: VocabularyCard(
                                  category: category,
                                  onTap: () => cubit.categoryAction(category),
                                ),
                              ),
                            );
                          } else {
                            return const Expanded(child: SizedBox());
                          }
                        }),
                      ),
                    ),
                    if (rowIndex != rowCount - 1)
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 10,
                        ),
                        child: const Divider(thickness: 1, color: Colors.grey),
                      ),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
