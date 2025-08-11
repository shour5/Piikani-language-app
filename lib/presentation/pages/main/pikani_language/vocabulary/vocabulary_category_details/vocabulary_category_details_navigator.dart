import 'package:flutter/material.dart';
import 'package:pikani/core/navigation/app_navigator.dart';
import 'vocabulary_category_details_page.dart';
import 'vocabulary_category_details_initial_params.dart';



class VocabularyCategoryDetailsNavigator {
VocabularyCategoryDetailsNavigator(this.navigator);

@override
late BuildContext context;

@override
late AppNavigator navigator;

}

mixin VocabularyCategoryDetailsRoute {
openVocabularyCategoryDetails(VocabularyCategoryDetailsInitialParams initialParams) {

    final queryString = initialParams.toQueryString();

     navigator.push(context, "${VocabularyCategoryDetailsPage.path}?$queryString",);

}

AppNavigator get navigator;

BuildContext get context;
}
