import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:pikani/core/alert/app_snack_bar.dart';
import 'package:pikani/core/utils/assets.dart';
import 'package:pikani/services/audio/audio_service.dart';
import 'blackfoot_prayer_initial_params.dart';
import 'blackfoot_prayer_state.dart';
import 'blackfoot_prayer_navigator.dart';

class BlackfootPrayerCubit extends Cubit<BlackfootPrayerState> {
  final BlackfootPrayerNavigator navigator;
  final AudioService audioService;
  final AppSnackBar snackBar;

  BlackfootPrayerCubit({
    required this.navigator,
    required this.audioService,
    required this.snackBar,
  }) : super(BlackfootPrayerState.initial());

  BuildContext get context => navigator.context;

  onInit(BlackfootPrayerInitialParams initialParams) {
    audioService.addOnCompleteListener(_onAudioComplete);
  }


  playAction() async {
    bool isPlaying=audioService.isPlaying;
    bool isPaused=audioService.isPaused;

    try {
      /// if not playing and not paused then it means new audio
      if (!isPlaying && !isPaused) {
        await audioService.play(Assets.blackfootPrayerAudio);
      } else {
        isPlaying ? await audioService.pause() : await audioService.resume();
      }
    } catch (e) {
      snackBar.show(e.toString());
    }finally{
      emit(state.copyWith(isPlaying: !isPlaying));
    }
  }
  dispose(){
    audioService.stop();
    audioService.removeOnCompleteListener(_onAudioComplete);
    emit(state.copyWith(isPlaying: false));
  }

  void _onAudioComplete() {
    // Handle audio completion here
    emit(state.copyWith(isPlaying: false));
  }

}
