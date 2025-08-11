import 'package:flutter/material.dart';
import 'package:pikani/presentation/pages/main/pikani_ai_photos/pikani_ai_photo_detail/pikani_ai_photo_detail_navigator.dart';
import '../../../../core/navigation/app_navigator.dart';
import 'pikani_ai_photos_page.dart';
import 'pikani_ai_photos_initial_params.dart';

class PikaniAiPhotosNavigator with PikaniAiPhotoDetailRoute{
  PikaniAiPhotosNavigator(this.navigator);

  @override
  late BuildContext context;

  @override
  late AppNavigator navigator;
}

mixin PikaniAiPhotosRoute {
  openPikaniAiPhotos(PikaniAiPhotosInitialParams initialParams) {
    final queryString = initialParams.toQueryString();

    navigator.push(context, "${PikaniAiPhotosPage.path}?$queryString");
  }

  AppNavigator get navigator;

  BuildContext get context;
}
