import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:pikani/domain/entities/sign_language_category.dart';
import 'package:video_player/video_player.dart';
import 'sign_language_category_detail_initial_params.dart';
import 'sign_language_category_detail_state.dart';
import 'sign_language_category_detail_navigator.dart';

class SignLanguageCategoryDetailCubit
    extends Cubit<SignLanguageCategoryDetailState> {
  SignLanguageCategoryDetailNavigator navigator;

  SignLanguageCategoryDetailCubit({required this.navigator})
    : super(SignLanguageCategoryDetailState.initial());

  BuildContext get context => navigator.context;

  late SignLanguageCategoryDetailInitialParams initialParams;
  late VideoPlayerController _controller;
  int videoIndex = 1;

  onInit(SignLanguageCategoryDetailInitialParams initialParams) {
    this.initialParams = initialParams;
    print(initialParams.id);
    loadJsonData();
  }

  Future<void> loadJsonData() async {
    emit(state.copyWith(loading: true));
    // Load string from assets
    final String jsonString = await rootBundle.loadString(
      'assets/jsons/sign_language_categories.json',
    );
    // Decode JSON
    final response = json.decode(jsonString);
    List<SignLanguageCategory> categories =
        (response as List)
            .map((data) => SignLanguageCategory.fromJson(data))
            .toList();
    for (var category in categories) {
      if (category.id == initialParams.id) {
        emit(
          state.copyWith(
            category: category,
             selectedItem: category.items.first,
          ),
        );
        break;
      }
    }
    emit(state.copyWith(loading: false));
  }

  setController(VideoPlayerController controller) {
    _controller = controller;
  }

  itemTapAction(SignLanguageCategoryItem item) {
    emit(state.copyWith(selectedItem: item));
  }

  replayVideo() async {
    if (_controller.value.isInitialized) {
      await _controller.pause();
      await _controller.seekTo(Duration.zero);
      await _controller.play();
    }
  }

  String get videoPath {
    return "${state.category?.videoFolderPath}/$videoIndex.mp4";
  }

  dispose() {
    videoIndex = 1;
    emit(SignLanguageCategoryDetailState.initial());
  }
}
