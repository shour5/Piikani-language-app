import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:pikani/core/alert/app_snack_bar.dart';
import 'package:pikani/domain/entities/naapi_story.dart';
import 'package:pikani/domain/repositories/database/remote_database_repository.dart';
import 'package:pikani/presentation/pages/main/piikani_stories/piikani_story_detail/piikani_story_detail_initial_params.dart';
import 'piikani_stories_initial_params.dart';
import 'piikani_stories_state.dart';
import 'piikani_stories_navigator.dart';

class PiikaniStoriesCubit extends Cubit<PiikaniStoriesState> {
  final PiikaniStoriesNavigator navigator;
  final AppSnackBar snackBar;
  final RemoteDatabaseRepository remoteDatabaseRepository;

  PiikaniStoriesCubit({
    required this.navigator,
    required this.remoteDatabaseRepository,
    required this.snackBar,
  }) : super(PiikaniStoriesState.initial());

  BuildContext get context => navigator.context;

  onInit(PiikaniStoriesInitialParams initialParams) {
    _getStories();
  }

  _getStories() async {
    try {
      emit(state.copyWith(loading: true));
      List<NaapiStory> naapiStoreis =
          await remoteDatabaseRepository.getNaapiStories();
      emit(state.copyWith(nappiStories: naapiStoreis));
    } catch (e) {
      snackBar.show(e.toString());
    } finally {
      emit(state.copyWith(loading: false));
    }
  }

  storyDetail(NaapiStory naapiStory){
    navigator.openPiikaniStoryDetail(PiikaniStoryDetailInitialParams(id: naapiStory.id.toString()));
  }

}
