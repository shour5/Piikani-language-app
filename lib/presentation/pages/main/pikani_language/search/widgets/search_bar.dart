import 'package:flutter/material.dart';
import 'package:pikani/presentation/widgets/custom_textfield.dart';
import '../search_cubit.dart';

class SearchBarWidget extends StatelessWidget {
  final SearchCubit cubit;

  const SearchBarWidget({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2.3,
      height: 60,
      child: Padding(
        padding: EdgeInsets.only(
          right: (MediaQuery.of(context).size.width / 12),
          top: ((MediaQuery.of(context).size.width / 32)),
        ),
        child: CustomTextField(
          controller: cubit.searchController,
          hint: "Search...",
          onSubmit: cubit.searchVocabulary,
          onChange: cubit.searchVocabulary,
        ),
      ),
    );
  }
}
