import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikani/core/extensions/theme_extension.dart';
import 'package:pikani/core/utils/assets.dart';
import 'package:pikani/core/utils/constants.dart';
import 'package:pikani/presentation/widgets/app_background.dart';
import 'package:pikani/presentation/widgets/menu_button_tile.dart';
import '../../../widgets/custom_app_bar.dart';
import 'sign_language_cubit.dart';
import 'sign_language_initial_params.dart';
import 'sign_language_state.dart';
import 'widgets/sign_language_category_btn.dart';

class SignLanguagePage extends StatefulWidget {
  final SignLanguageCubit cubit;
  final SignLanguageInitialParams initialParams;

  static const path = '/sign_language';

  const SignLanguagePage({
    Key? key,
    required this.cubit,
    required this.initialParams,
  }) : super(key: key);

  @override
  State<SignLanguagePage> createState() => _SignLanguageState();
}

class _SignLanguageState extends State<SignLanguagePage> {
  SignLanguageCubit get cubit => widget.cubit;

  @override
  void initState() {
    super.initState();
    cubit.navigator.context = context;
    cubit.onInit(widget.initialParams);
  }

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: BlocBuilder<SignLanguageCubit, SignLanguageState>(
        bloc: cubit,
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            appBar: CustomAppBar(
              title: "Sign Language",
              subTitle: "Beginner Basics",
            ),
            body: Stack(
              clipBehavior: Clip.none,
              children: [
                _footerImage(),
                Padding(
                  padding: const EdgeInsets.all(kScreenPadding),
                  child: Column(
                    spacing: 50,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MenuButtonTile(
                            title: "Signing Info",
                            icon: Assets.signInfoIcon,
                            onTap: () {
                              cubit.btnAction(0);
                            },
                          ),
                          MenuButtonTile(
                            title: "Signing Short Phrases",
                            icon: Assets.signShortPhrasesIcon,
                            onTap: () {
                              cubit.btnAction(1);
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SignLanguageCategoryBtn(
                            title: "Places in Alberta",
                            image: Assets.placeInAlberta,
                            onTap: (){
                              cubit.categoryAction("1");
                            },

                          ),
                          SignLanguageCategoryBtn(
                            title: "Animals",
                            image: Assets.animal,
                            onTap: (){
                              cubit.categoryAction("2");
                            },
                          ),
                          SignLanguageCategoryBtn(
                            title: "Food and Drinks",
                            image: Assets.foodAndDrink,
                            onTap: (){
                              cubit.categoryAction("3");
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _footerImage() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Image.asset(
        Assets.pikaniLanguageFooter,
        width: context.sw,
        fit: BoxFit.cover,
      ),
    );
  }
}
