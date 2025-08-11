import 'package:flutter/material.dart';
import 'package:pikani/presentation/pages/main/main_menu/main_menu_navigator.dart';
import '../../../../core/navigation/app_navigator.dart';
import 'splash_page.dart';
import 'splash_initial_params.dart';

class SplashNavigator with MainMenuRoute {
  SplashNavigator(this.navigator);

  @override
  late BuildContext context;

  @override
  late AppNavigator navigator;
}

mixin SplashRoute {
  openSplash(SplashInitialParams initialParams) {
    final queryString = initialParams.toQueryString();

    navigator.push(context, "${SplashPage.path}?$queryString");
  }

  AppNavigator get navigator;

  BuildContext get context;
}
