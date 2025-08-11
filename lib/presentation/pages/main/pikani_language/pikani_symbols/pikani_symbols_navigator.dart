import 'package:flutter/material.dart';
import '../../../../../core/navigation/app_navigator.dart';
import 'pikani_symbols_page.dart';
import 'pikani_symbols_initial_params.dart';

class PikaniSymbolsNavigator {
  PikaniSymbolsNavigator(this.navigator);

  @override
  late BuildContext context;

  @override
  late AppNavigator navigator;
}

mixin PikaniSymbolsRoute {
  openPikaniSymbols(PikaniSymbolsInitialParams initialParams) {
    final queryString = initialParams.toQueryString();

    navigator.push(context, "${PikaniSymbolsPage.path}?$queryString");
  }

  AppNavigator get navigator;

  BuildContext get context;
}
