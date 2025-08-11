import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:pikani/core/alert/app_snack_bar.dart';
import 'package:pikani/data/models/ai_photo_json.dart';
import 'package:pikani/presentation/pages/main/pikani_ai_photos/pikani_ai_photo_detail/pikani_ai_photo_detail_initial_params.dart';
import '../../../../domain/entities/ai_photo.dart';
import 'pikani_ai_photos_initial_params.dart';
import 'pikani_ai_photos_state.dart';
import 'pikani_ai_photos_navigator.dart';

class PikaniAiPhotosCubit extends Cubit<PikaniAiPhotosState> {
  final PikaniAiPhotosNavigator navigator;
  final AppSnackBar snackBar;

  PikaniAiPhotosCubit({required this.navigator, required this.snackBar})
    : super(PikaniAiPhotosState.initial());

  BuildContext get context => navigator.context;

  onInit(PikaniAiPhotosInitialParams initialParams) {
    _loadJsonData();
  }

  imageAction(AIPhoto aiPhoto) {
    navigator.openPikaniAiPhotoDetail(
      PikaniAiPhotoDetailInitialParams(id: aiPhoto.id!),
    );
  }

  Future<void> _loadJsonData() async {
    try {
      emit(state.copyWith(loading: true));
      // Load string from assets
      final String jsonString = await rootBundle.loadString(
        'assets/jsons/ai_photos.json',
      );
      // Decode JSON
      final response = json.decode(jsonString);
      List<AIPhoto> aiPhotos =
          (response as List)
              .map((data) => AIPhotoJson.fromJson(data).toDomain())
              .toList();
      emit(state.copyWith(aiPhotos: aiPhotos));
    } catch (e) {
      snackBar.show(e.toString());
    } finally {
      emit(state.copyWith(loading: false));
    }
  }
}
