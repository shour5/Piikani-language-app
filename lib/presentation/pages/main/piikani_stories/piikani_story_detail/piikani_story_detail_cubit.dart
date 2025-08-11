import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pikani/services/audio/audio_service.dart';
import '../../../../../core/alert/app_snack_bar.dart';
import '../../../../../domain/entities/naapi_story.dart';
import '../../../../../domain/repositories/database/remote_database_repository.dart';
import 'piikani_story_detail_initial_params.dart';
import 'piikani_story_detail_state.dart';
import 'piikani_story_detail_navigator.dart';

class PiikaniStoryDetailCubit extends Cubit<PiikaniStoryDetailState> {
  PiikaniStoryDetailNavigator navigator;
  final AppSnackBar snackBar;
  final RemoteDatabaseRepository remoteDatabaseRepository;
  final AudioService audioService;

  PiikaniStoryDetailCubit({
    required this.navigator,
    required this.remoteDatabaseRepository,
    required this.snackBar,
    required this.audioService,
  }) : super(PiikaniStoryDetailState.initial());

  BuildContext get context => navigator.context;

  late PiikaniStoryDetailInitialParams initialParams;

  onInit(PiikaniStoryDetailInitialParams initialParams) {
    this.initialParams = initialParams;
    _getStoryById();
  }

  Future<void> _getStoryById() async {
    try {
      NaapiStory naapiStory = await remoteDatabaseRepository.getNaapiStoryById(
        id: initialParams.id,
      );
      emit(
        state.copyWith(
          naapiStory: naapiStory,
          selectedStory: naapiStory.stories?.first,
        ),
      );
    } catch (e) {
      snackBar.show(e.toString());
      context.pop();
    } finally {
      emit(state.copyWith(loading: false));
    }
  }

  List<Story> get stories => state.naapiStory.stories ?? [];

  void replayAudio() {
    _playAudio();
  }

  void storyTap(Story story) {
    emit(state.copyWith(selectedStory: story));
    _playAudio();
  }

  _playAudio() {
    audioService.play(state.selectedStory!.audio!.replaceAll("assets/", ""));
  }

  dispose() {
    audioService.stop();
    emit(PiikaniStoryDetailState.initial());
  }
}
