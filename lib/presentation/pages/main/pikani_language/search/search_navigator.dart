import 'package:flutter/material.dart';
import 'package:pikani/core/navigation/app_navigator.dart';
import 'search_page.dart';
import 'search_initial_params.dart';



class SearchNavigator {
SearchNavigator(this.navigator);

@override
late BuildContext context;

@override
late AppNavigator navigator;

}

mixin SearchRoute {
openSearch(SearchInitialParams initialParams) {

  final queryString = initialParams.toQueryString();

  navigator.push(context, "${SearchPage.path}?$queryString",);

}

AppNavigator get navigator;

BuildContext get context;
}
