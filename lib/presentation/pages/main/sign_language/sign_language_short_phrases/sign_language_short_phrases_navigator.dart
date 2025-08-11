import 'package:flutter/material.dart';
import 'package:pikani/core/navigation/app_navigator.dart';
import 'sign_language_short_phrases_page.dart';
import 'sign_language_short_phrases_initial_params.dart';

class SignLanguageShortPhrasesNavigator {
  SignLanguageShortPhrasesNavigator(this.navigator);

  @override
  late BuildContext context;

  @override
  late AppNavigator navigator;
}

mixin SignLanguageShortPhrasesRoute {
  openSignLanguageShortPhrases(
    SignLanguageShortPhrasesInitialParams initialParams,
  ) {
    final queryString = initialParams.toQueryString();

    navigator.push(
      context,
      "${SignLanguageShortPhrasesPage.path}?$queryString",
    );
  }

  AppNavigator get navigator;

  BuildContext get context;
}
