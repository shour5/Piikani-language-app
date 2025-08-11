import 'package:flutter/material.dart';
import '../../../../../core/navigation/app_navigator.dart';
import 'sign_language_info_page.dart';
import 'sign_language_info_initial_params.dart';



class SignLanguageInfoNavigator {
SignLanguageInfoNavigator(this.navigator);

@override
late BuildContext context;

@override
late AppNavigator navigator;

}

mixin SignLanguageInfoRoute {
openSignLanguageInfo(SignLanguageInfoInitialParams initialParams) {

    final queryString = initialParams.toQueryString();

     navigator.push(context, "${ SignLanguageInfoPage.path}?$queryString",);

}

AppNavigator get navigator;

BuildContext get context;
}
