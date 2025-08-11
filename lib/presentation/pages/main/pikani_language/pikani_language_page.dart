import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikani/core/extensions/theme_extension.dart';
import 'package:pikani/core/utils/assets.dart';
import 'package:pikani/core/utils/constants.dart';
import '../../../widgets/app_background.dart';
import '../../../widgets/custom_app_bar.dart';
import '../../../widgets/menu_button_tile.dart';
import 'pikani_language_cubit.dart';
import 'pikani_language_initial_params.dart';
import 'pikani_language_state.dart';

class PikaniLanguagePage extends StatefulWidget {
  final PikaniLanguageCubit cubit;
  final PikaniLanguageInitialParams initialParams;

  static const path = '/pikani_language';

  const PikaniLanguagePage({
    Key? key,
    required this.cubit,
    required this.initialParams,
  }) : super(key: key);

  @override
  State<PikaniLanguagePage> createState() => _PikaniLanguageState();
}

class _PikaniLanguageState extends State<PikaniLanguagePage> {
  PikaniLanguageCubit get cubit => widget.cubit;

  @override
  void initState() {
    super.initState();
    cubit.navigator.context = context;
    cubit.onInit(widget.initialParams);
  }

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: BlocBuilder<PikaniLanguageCubit, PikaniLanguageState>(
        bloc: cubit,
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            appBar: CustomAppBar(
              title: "Piikani Language",
              subTitle: "Learning the Basics",
            ),
            body: BlocBuilder<PikaniLanguageCubit, PikaniLanguageState>(
              bloc: cubit,
              builder: (context, state) {
                return Stack(
                  fit: StackFit.expand,
                  children: [
                    Positioned.fill(child: _footer()),
                    Positioned(
                      top: 30,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: kScreenPadding,
                          vertical: kScreenPadding,
                        ),
                        child: Column(
                          children: [
                            MenuButtonTile(
                              title: "Vocabulary",
                              icon: Assets.vocabulary,
                              onTap: () {
                                cubit.btnAction(0);
                              },
                              isSelected: true,
                            ),
                            MenuButtonTile(
                              title: "Understanding Piikani",
                              icon: Assets.understandingPikani,
                              onTap: () {
                                cubit.btnAction(1);
                              },
                            ),
                            MenuButtonTile(
                              title: "Piikani Symbols",
                              icon: Assets.pikaniSymbols,
                              onTap: () {
                                cubit.btnAction(2);
                              },
                            ),
                            MenuButtonTile(
                              title: "Piikani Clans",
                              icon: Assets.pikaniClans,
                              onTap: () {
                                cubit.btnAction(3);
                              },
                            ),
                            MenuButtonTile(
                              title: "The Winter Count",
                              icon: Assets.winterCount,
                              onTap: () {
                                cubit.btnAction(4);
                              },
                            ),
                            MenuButtonTile(
                              title: "Search",
                              icon: Assets.search,
                              onTap: () {
                                cubit.btnAction(5);
                              },
                              isSelected:true,
                            ),
                          ],
                        ),
                      ),
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


  Widget _footer() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Stack(
        children: [
          Positioned(
            left: 60,
            top: 30,
            child: Image.asset(Assets.eagleLogo, width: 100),
          ),
          Image.asset(Assets.pikaniLanguageFooter, width: context.sw),
        ],
      ),
    );
  }
}
