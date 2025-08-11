import 'package:flutter/material.dart';
import 'package:pikani/presentation/pages/main/blackfoot_prayer/blackfoot_prayer_navigator.dart';
import 'package:pikani/presentation/pages/main/piikani_stories/piikani_stories_navigator.dart';
import 'package:pikani/presentation/pages/main/pikani_ai_photos/pikani_ai_photos_navigator.dart';
import 'package:pikani/presentation/pages/main/pikani_language/pikani_language_navigator.dart';
import 'package:pikani/presentation/pages/main/prayer_menu/prayer_menu_navigator.dart';
import 'package:pikani/presentation/pages/main/sign_language/sign_language_navigator.dart';
import '../../../../core/navigation/app_navigator.dart';
import 'main_menu_page.dart';
import 'main_menu_initial_params.dart';

class MainMenuNavigator
    with
        PrayerMenuRoute,
        PikaniLanguageRoute,
        SignLanguageRoute,
        PikaniAiPhotosRoute,
        PiikaniStoriesRoute {
  MainMenuNavigator(this.navigator);

  @override
  late BuildContext context;

  @override
  late AppNavigator navigator;
}

mixin MainMenuRoute {
  openMainMenu(MainMenuInitialParams initialParams) {
    final queryString = initialParams.toQueryString();
    navigator.pushAndClearAllPrevious(
      context,
      "${MainMenuPage.path}?$queryString",
    );
  }

  AppNavigator get navigator;

  BuildContext get context;
}
