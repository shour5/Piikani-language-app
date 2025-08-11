import 'package:flutter/material.dart';
import '../../../../../core/navigation/app_navigator.dart';
import 'lord_prayer_page.dart';
import 'lord_prayer_initial_params.dart';



class LordPrayerNavigator {
LordPrayerNavigator(this.navigator);

@override
late BuildContext context;

@override
late AppNavigator navigator;

}

mixin LordPrayerRoute {
openLordPrayer(LordPrayerInitialParams initialParams) {

    final queryString = initialParams.toQueryString();

     navigator.push(context, "${ LordPrayerPage.path}?$queryString",);

}

AppNavigator get navigator;

BuildContext get context;
}
