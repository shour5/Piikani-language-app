import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:pikani/presentation/pages/main/main_menu/main_menu_initial_params.dart';
import 'splash_initial_params.dart';
import 'splash_state.dart';
import 'splash_navigator.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashNavigator navigator;

  SplashCubit({required this.navigator}) : super(SplashState.initial());

  BuildContext get context => navigator.context;

  onInit(SplashInitialParams initialParams) {}

  onAnimationComplete() {
    navigator.openMainMenu(const MainMenuInitialParams());
  }
}
