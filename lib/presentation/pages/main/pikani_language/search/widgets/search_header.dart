import 'package:flutter/material.dart';
import 'package:pikani/core/extensions/theme_extension.dart';
import 'package:pikani/presentation/widgets/custom_app_bar.dart';
import '../search_cubit.dart';
import '../search_state.dart';
import 'search_bar.dart';

class SearchHeader extends StatelessWidget {
  final SearchState state;
  final SearchCubit cubit;

  const SearchHeader({super.key, required this.state, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: CustomAppBar(
              title: "Search",
              subTitle: "Piikani Vocabulary Index",
              callback: () {
                cubit.stopWav();
              },
            ),
          ),
          cubit.showSearch
              ? SearchBarWidget(cubit: cubit)
              : InkWell(
                  onTap: cubit.toggleSearch,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Search",
                      style: context.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
          if (!cubit.showSearch)
            SizedBox(width: MediaQuery.of(context).size.width / 4),
        ],
      ),
    );
  }
}
