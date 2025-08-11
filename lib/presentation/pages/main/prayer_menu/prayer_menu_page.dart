import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikani/core/extensions/theme_extension.dart';
import 'package:pikani/core/utils/constants.dart';
import 'package:pikani/core/utils/style.dart';
import 'package:pikani/presentation/widgets/custom_app_bar.dart';
import '../../../../core/utils/assets.dart';
import 'prayer_menu_cubit.dart';
import 'prayer_menu_initial_params.dart';
import 'prayer_menu_state.dart';

class PrayerMenuPage extends StatefulWidget {
  final PrayerMenuCubit cubit;
  final PrayerMenuInitialParams initialParams;

  static const path = '/prayer_menu';

  const PrayerMenuPage({
    Key? key,
    required this.cubit,
    required this.initialParams,
  }) : super(key: key);

  @override
  State<PrayerMenuPage> createState() => _PrayerMenuState();
}

class _PrayerMenuState extends State<PrayerMenuPage> {
  PrayerMenuCubit get cubit => widget.cubit;

  @override
  void initState() {
    super.initState();
    cubit.navigator.context = context;
    cubit.onInit(widget.initialParams);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PrayerMenuCubit, PrayerMenuState>(
      bloc: cubit,
      builder: (context, state) {
        return Scaffold(
          appBar: CustomAppBar(title: "Prayers in Blackfoot"),
          body: Stack(
            children: [
              Positioned.fill(child: _footer()),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kScreenPadding),
                child: Column(
                  children: [
                    Text(
                      "Prayer holds a central place in Blackfoot culture, guiding individuals in their connection to Creator, ancestors, and the natural world. Translating The Lord's Prayer and a traditional Blackfoot prayer into the Blackfoot language honors this sacred tradition and helps preserve the spiritual expressions of the people.",
                      style: AppStyle.bodyDescriptionStyle(context),
                    ),
                    GestureDetector(
                      onTap: cubit.blackfootPrayerAction,
                      child: Image.asset(Assets.bfPrayer),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: cubit.lordPrayerAction,
                      child: Image.asset(Assets.lordPrayer),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
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
