import 'package:flutter/material.dart';
import 'package:pikani/presentation/pages/main/piikani_stories/piikani_story_detail/piikani_story_detail_navigator.dart';
import '../../../../core/navigation/app_navigator.dart';
import 'piikani_stories_page.dart';
import 'piikani_stories_initial_params.dart';



class PiikaniStoriesNavigator with PiikaniStoryDetailRoute{
PiikaniStoriesNavigator(this.navigator);

@override
late BuildContext context;

@override
late AppNavigator navigator;

}

mixin PiikaniStoriesRoute {
openPiikaniStories(PiikaniStoriesInitialParams initialParams) {

    final queryString = initialParams.toQueryString();

     navigator.push(context, "${ PiikaniStoriesPage.path}?$queryString",);

}

AppNavigator get navigator;

BuildContext get context;
}
