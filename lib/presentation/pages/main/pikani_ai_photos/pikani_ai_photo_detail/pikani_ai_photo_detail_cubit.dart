import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:pikani/core/alert/app_snack_bar.dart';
import '../../../../../data/models/ai_photo_json.dart';
import '../../../../../domain/entities/ai_photo.dart';
import 'pikani_ai_photo_detail_initial_params.dart';
import 'pikani_ai_photo_detail_state.dart';
import 'pikani_ai_photo_detail_navigator.dart';

class PikaniAiPhotoDetailCubit extends Cubit<PikaniAiPhotoDetailState> {
  final PikaniAiPhotoDetailNavigator navigator;
  final AppSnackBar snackBar;

  PikaniAiPhotoDetailCubit({required this.navigator, required this.snackBar})
    : super(PikaniAiPhotoDetailState.initial());

  BuildContext get context => navigator.context;
  late PikaniAiPhotoDetailInitialParams initialParams;

  onInit(PikaniAiPhotoDetailInitialParams initialParams) {
    this.initialParams=initialParams;
    _loadJsonData();
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
      emit(state.copyWith(aiPhoto: aiPhotos.singleWhere((photo)=>photo.id==initialParams.id)));
    } catch (e) {
      snackBar.show(e.toString());
    } finally {
      emit(state.copyWith(loading: false));
    }
  }
}
