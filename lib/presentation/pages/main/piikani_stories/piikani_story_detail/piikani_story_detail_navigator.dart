import 'package:flutter/material.dart';
import '../../../../../core/navigation/app_navigator.dart';
import 'piikani_story_detail_page.dart';
import 'piikani_story_detail_initial_params.dart';

class PiikaniStoryDetailNavigator {
  PiikaniStoryDetailNavigator(this.navigator);

  @override
  late BuildContext context;

  @override
  late AppNavigator navigator;
}

mixin PiikaniStoryDetailRoute {
  openPiikaniStoryDetail(PiikaniStoryDetailInitialParams initialParams) {
    final queryString = initialParams.toQueryString();

    navigator.push(context, "${PiikaniStoryDetailPage.path}?$queryString");
  }

  AppNavigator get navigator;

  BuildContext get context;
}
