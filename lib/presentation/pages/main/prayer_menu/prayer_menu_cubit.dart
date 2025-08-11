import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:pikani/presentation/pages/main/blackfoot_prayer/blackfoot_prayer_initial_params.dart';
import 'package:pikani/presentation/pages/main/prayer_menu/lord_prayer/lord_prayer_initial_params.dart';
import 'prayer_menu_initial_params.dart';
import 'prayer_menu_state.dart';
import 'prayer_menu_navigator.dart';

class PrayerMenuCubit extends Cubit<PrayerMenuState> {
  PrayerMenuNavigator navigator;

  PrayerMenuCubit({required this.navigator}) : super(PrayerMenuState.initial());

  BuildContext get context => navigator.context;

  onInit(PrayerMenuInitialParams initialParams) {}

  blackfootPrayerAction() {
    navigator.openBlackfootPrayer(BlackfootPrayerInitialParams());
  }
  lordPrayerAction() {
    navigator.openLordPrayer(LordPrayerInitialParams());
  }

}
