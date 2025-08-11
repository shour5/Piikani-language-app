import 'package:flutter/material.dart';
import 'package:pikani/presentation/pages/main/sign_language/sign_language_category_detail/sign_language_category_detail_navigator.dart';
import 'package:pikani/presentation/pages/main/sign_language/sign_language_info/sign_language_info_navigator.dart';
import 'package:pikani/presentation/pages/main/sign_language/sign_language_short_phrases/sign_language_short_phrases_navigator.dart';
import '../../../../core/navigation/app_navigator.dart';
import 'sign_language_page.dart';
import 'sign_language_initial_params.dart';



class SignLanguageNavigator with SignLanguageInfoRoute,SignLanguageShortPhrasesRoute,SignLanguageCategoryDetailRoute{
SignLanguageNavigator(this.navigator);

@override
late BuildContext context;

@override
late AppNavigator navigator;

}

mixin SignLanguageRoute {
openSignLanguage(SignLanguageInitialParams initialParams) {

    final queryString = initialParams.toQueryString();

     navigator.push(context, "${ SignLanguagePage.path}?$queryString",);

}

AppNavigator get navigator;

BuildContext get context;
}
