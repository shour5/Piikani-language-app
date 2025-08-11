import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikani/core/extensions/theme_extension.dart';
import 'package:pikani/core/utils/assets.dart';
import 'package:pikani/core/utils/constants.dart';
import '../../../widgets/menu_button_tile.dart' show MenuButtonTile;
import 'main_menu_cubit.dart';
import 'main_menu_initial_params.dart';
import 'main_menu_state.dart';

class MainMenuPage extends StatefulWidget {
  final MainMenuCubit cubit;
  final MainMenuInitialParams initialParams;

  static const path = '/main_menu';

  const MainMenuPage({
    Key? key,
    required this.cubit,
    required this.initialParams,
  }) : super(key: key);

  @override
  State<MainMenuPage> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenuPage> {
  MainMenuCubit get cubit => widget.cubit;

  @override
  void initState() {
    super.initState();
    cubit.navigator.context = context;
    cubit.onInit(widget.initialParams);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainMenuCubit, MainMenuState>(
      bloc: cubit,
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              Positioned.fill(child: _bgImage()),
              Positioned.fill(top: 10, child: _logo()),
              Positioned.fill(child: _footer()),
              Positioned(
                top: 250,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kScreenPadding,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MenuButtonTile(
                        title: "Blackfoot Prayer",
                        icon: Assets.blackfootPrayer,
                        onTap: () {
                          cubit.btnAction(0);
                        },
                      ),
                      MenuButtonTile(
                        title: "Piikani Language",
                        icon: Assets.pikaniLanguage,
                        isSelected: true,
                        onTap: () {
                          cubit.btnAction(1);
                        },
                      ),
                      MenuButtonTile(
                        title: "Sign Language",
                        icon: Assets.signLanguage,
                        onTap: () {
                          cubit.btnAction(2);
                        },
                      ),
                      MenuButtonTile(
                        title: "Piikani Ai Photos",
                        icon: Assets.pikaniAI,
                        onTap: () {
                          cubit.btnAction(3);
                        },
                      ),
                      MenuButtonTile(
                        title: "Piikani Stories",
                        icon: Assets.pikaniStories,
                        onTap: () {
                          cubit.btnAction(4);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _logo() {
    return SafeArea(
      child: Align(
        alignment: Alignment.topCenter,
        child: Image.asset(Assets.landingLogo, width: 300),
      ),
    );
  }

  Widget _bgImage() {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Image.asset(
            Assets.landingHeader,
            fit: BoxFit.cover,
            width: context.sw,
          ),
        ),
        Expanded(
          flex: 9,
          child: Image.asset(Assets.bg, fit: BoxFit.cover, width: context.sw),
        ),
      ],
    );
  }

  Widget _footer() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Image.asset(Assets.landingFooter, width: context.sw),
    );
  }
}
