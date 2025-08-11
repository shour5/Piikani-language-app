import 'package:flutter/material.dart';
import '../../../../../core/navigation/app_navigator.dart';
import 'understanding_pikani_page.dart';
import 'understanding_pikani_initial_params.dart';

class UnderstandingPikaniNavigator {
  UnderstandingPikaniNavigator(this.navigator);

  @override
  late BuildContext context;

  @override
  late AppNavigator navigator;
}

mixin UnderstandingPikaniRoute {
  openUnderstandingPikani(UnderstandingPikaniInitialParams initialParams) {
    final queryString = initialParams.toQueryString();

    navigator.push(context, "${UnderstandingPikaniPage.path}?$queryString");
  }

  AppNavigator get navigator;

  BuildContext get context;
}
