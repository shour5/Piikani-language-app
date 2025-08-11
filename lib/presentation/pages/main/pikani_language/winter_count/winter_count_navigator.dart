import 'package:flutter/material.dart';
import 'package:pikani/core/navigation/app_navigator.dart';
import 'winter_count_page.dart';
import 'winter_count_initial_params.dart';



class WinterCountNavigator {
WinterCountNavigator(this.navigator);

@override
late BuildContext context;

@override
late AppNavigator navigator;

}

mixin WinterCountRoute {
openWinterCount(WinterCountInitialParams initialParams) {

    final queryString = initialParams.toQueryString();

     navigator.push(context, "${ WinterCountPage.path}?$queryString",);

}

AppNavigator get navigator;

BuildContext get context;
}
