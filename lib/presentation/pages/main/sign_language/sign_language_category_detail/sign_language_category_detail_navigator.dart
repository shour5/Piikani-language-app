import 'package:flutter/material.dart';
import 'package:pikani/core/navigation/app_navigator.dart';
import 'sign_language_category_detail_page.dart';
import 'sign_language_category_detail_initial_params.dart';

class SignLanguageCategoryDetailNavigator {
  SignLanguageCategoryDetailNavigator(this.navigator);

  @override
  late BuildContext context;

  @override
  late AppNavigator navigator;
}

mixin SignLanguageCategoryDetailRoute {
  openSignLanguageCategoryDetail(
    SignLanguageCategoryDetailInitialParams initialParams,
  ) {
    final queryString = initialParams.toQueryString();

    navigator.push(
      context,
      "${SignLanguageCategoryDetailPage.path}?$queryString",
    );
  }

  AppNavigator get navigator;

  BuildContext get context;
}
