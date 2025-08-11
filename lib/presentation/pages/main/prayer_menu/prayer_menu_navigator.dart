import 'package:flutter/material.dart';
import 'package:pikani/presentation/pages/main/blackfoot_prayer/blackfoot_prayer_navigator.dart';
import 'package:pikani/presentation/pages/main/prayer_menu/lord_prayer/lord_prayer_navigator.dart';
import '../../../../core/navigation/app_navigator.dart';
import 'prayer_menu_page.dart';
import 'prayer_menu_initial_params.dart';



class PrayerMenuNavigator with BlackfootPrayerRoute,LordPrayerRoute{
PrayerMenuNavigator(this.navigator);

@override
late BuildContext context;

@override
late AppNavigator navigator;

}

mixin PrayerMenuRoute {
openPrayerMenu(PrayerMenuInitialParams initialParams) {

    final queryString = initialParams.toQueryString();

     navigator.push(context, "${ PrayerMenuPage.path}?$queryString",);

}

AppNavigator get navigator;

BuildContext get context;
}
