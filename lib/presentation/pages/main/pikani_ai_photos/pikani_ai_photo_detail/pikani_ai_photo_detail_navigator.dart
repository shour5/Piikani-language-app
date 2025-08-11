import 'package:flutter/material.dart';
import '../../../../../core/navigation/app_navigator.dart';
import 'pikani_ai_photo_detail_page.dart';
import 'pikani_ai_photo_detail_initial_params.dart';



class PikaniAiPhotoDetailNavigator {
PikaniAiPhotoDetailNavigator(this.navigator);

@override
late BuildContext context;

@override
late AppNavigator navigator;

}

mixin PikaniAiPhotoDetailRoute {
openPikaniAiPhotoDetail(PikaniAiPhotoDetailInitialParams initialParams) {

    final queryString = initialParams.toQueryString();

     navigator.push(context, "${ PikaniAiPhotoDetailPage.path}?$queryString",);

}

AppNavigator get navigator;

BuildContext get context;
}
