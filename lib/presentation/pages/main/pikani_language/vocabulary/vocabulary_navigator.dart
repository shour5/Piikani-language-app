import 'package:flutter/material.dart';
import 'package:pikani/presentation/pages/main/pikani_language/vocabulary/vocabulary_category_details/vocabulary_category_details_navigator.dart';
import '../../../../../../core/navigation/app_navigator.dart';
import 'vocabulary_page.dart';
import 'vocabulary_initial_params.dart';



class VocabularyNavigator with VocabularyCategoryDetailsRoute {
VocabularyNavigator(this.navigator);

@override
late BuildContext context;

@override
late AppNavigator navigator;

}

mixin VocabularyRoute {
openVocabulary(VocabularyInitialParams initialParams) {

    final queryString = initialParams.toQueryString();

     navigator.push(context, "${ VocabularyPage.path}?$queryString",);

}

AppNavigator get navigator;

BuildContext get context;
}
