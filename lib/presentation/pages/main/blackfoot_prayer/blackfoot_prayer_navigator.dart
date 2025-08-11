import 'package:flutter/material.dart';
import '../../../../core/navigation/app_navigator.dart';
import 'blackfoot_prayer_page.dart';
import 'blackfoot_prayer_initial_params.dart';

class BlackfootPrayerNavigator {
  BlackfootPrayerNavigator(this.navigator);

  @override
  late BuildContext context;

  @override
  late AppNavigator navigator;
}

mixin BlackfootPrayerRoute {
  openBlackfootPrayer(BlackfootPrayerInitialParams initialParams) {
    final queryString = initialParams.toQueryString();
    navigator.push(context, "${BlackfootPrayerPage.path}?$queryString");
  }

  AppNavigator get navigator;

  BuildContext get context;
}
