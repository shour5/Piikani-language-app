import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikani/presentation/pages/main/pikani_language/search/widgets/greetings_grid.dart';
import 'package:pikani/presentation/pages/main/pikani_language/search/widgets/number_scroller.dart';
import 'package:pikani/presentation/pages/main/pikani_language/search/widgets/search_header.dart';
import 'package:pikani/presentation/pages/main/pikani_language/search/widgets/title_section.dart';

import 'search_cubit.dart';
import 'search_initial_params.dart';
import 'search_state.dart';

class SearchPage extends StatefulWidget {
  final SearchCubit cubit;
  final SearchInitialParams initialParams;

  static const path = '/search';

  const SearchPage({Key? key, required this.cubit, required this.initialParams})
    : super(key: key);

  @override
  State<SearchPage> createState() => _SearchState();
}

class _SearchState extends State<SearchPage> {
  SearchCubit get cubit => widget.cubit;

  @override
  void initState() {
    super.initState();
    cubit.navigator.context = context;
    cubit.onInit(widget.initialParams);
  }

  @override
  void dispose() {
    cubit.onDispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      bloc: cubit,
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child:
                state.loading
                    ? const Center(child: CircularProgressIndicator())
                    : Column(
                      children: [
                        SearchHeader(state: state, cubit: cubit),
                        const SizedBox(height: 10),
                        TitleSection(state: state),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: GreetingsGrid(
                                  state: state,
                                  cubit: cubit,
                                ),
                              ),
                              NumberScroller(state: state, cubit: cubit),
                            ],
                          ),
                        ),
                      ],
                    ),
          ),
        );
      },
    );
  }
}
