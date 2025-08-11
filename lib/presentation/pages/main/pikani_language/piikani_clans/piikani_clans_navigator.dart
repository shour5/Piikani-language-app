import 'package:flutter/material.dart';
import '../../../../../core/navigation/app_navigator.dart';
import 'piikani_clans_page.dart';
import 'piikani_clans_initial_params.dart';



class PiikaniClansNavigator {
PiikaniClansNavigator(this.navigator);

@override
late BuildContext context;

@override
late AppNavigator navigator;

}

mixin PiikaniClansRoute {
openPiikaniClans(PiikaniClansInitialParams initialParams) {

    final queryString = initialParams.toQueryString();

     navigator.push(context, "${ PiikaniClansPage.path}?$queryString",);

}

AppNavigator get navigator;

BuildContext get context;
}
