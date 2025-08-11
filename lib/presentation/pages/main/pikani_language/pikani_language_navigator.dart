import 'package:flutter/material.dart';
import 'package:pikani/presentation/pages/main/pikani_language/piikani_clans/piikani_clans_navigator.dart';
import 'package:pikani/presentation/pages/main/pikani_language/pikani_symbols/pikani_symbols_navigator.dart';
import 'package:pikani/presentation/pages/main/pikani_language/search/search_navigator.dart';
import 'package:pikani/presentation/pages/main/pikani_language/understanding_pikani/understanding_pikani_navigator.dart';
import 'package:pikani/presentation/pages/main/pikani_language/winter_count/winter_count_navigator.dart';
import 'package:pikani/presentation/pages/main/pikani_language/vocabulary/vocabulary_navigator.dart';
import '../../../../core/navigation/app_navigator.dart';
import 'pikani_language_page.dart';
import 'pikani_language_initial_params.dart';

class PikaniLanguageNavigator with UnderstandingPikaniRoute,PikaniSymbolsRoute,PiikaniClansRoute,WinterCountRoute,VocabularyRoute, SearchRoute{
  PikaniLanguageNavigator(this.navigator);

  @override
  late BuildContext context;

  @override
  late AppNavigator navigator;
}

mixin PikaniLanguageRoute {
  openPikaniLanguage(PikaniLanguageInitialParams initialParams) {
    final queryString = initialParams.toQueryString();

    navigator.push(context, "${PikaniLanguagePage.path}?$queryString");
  }

  AppNavigator get navigator;

  BuildContext get context;
}
