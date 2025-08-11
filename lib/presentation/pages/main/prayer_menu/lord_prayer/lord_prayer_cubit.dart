import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:pikani/core/alert/app_snack_bar.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../services/audio/audio_service.dart';
import 'lord_prayer_initial_params.dart';
import 'lord_prayer_state.dart';
import 'lord_prayer_navigator.dart';

class LordPrayerCubit extends Cubit<LordPrayerState> {
  LordPrayerNavigator navigator;
  final AudioService audioService;
  final AppSnackBar snackBar;

  LordPrayerCubit({
    required this.navigator,
    required this.audioService,
    required this.snackBar,
  }) : super(LordPrayerState.initial());

  BuildContext get context => navigator.context;

  onInit(LordPrayerInitialParams initialParams) {
    audioService.addOnCompleteListener(_onAudioComplete);
  }

  String lastPlaying = "";

  playShirly() async {
    bool isPlaying = audioService.isPlaying;
    bool isPaused = audioService.isPaused;

    try {
      /// if not playing and not paused then it means new audio
      if ((!isPlaying && !isPaused) ||
          lastPlaying != Assets.forwardedByShileyAudio) {
        lastPlaying = Assets.forwardedByShileyAudio;
        await audioService.play(Assets.forwardedByShileyAudio);
      } else {
        isPlaying ? await audioService.pause() : await audioService.resume();
      }
    } catch (e) {
      snackBar.show(e.toString());
    } finally {
      emit(state.copyWith(playingShirly: !isPlaying));
    }
  }

  playLordPrayer() async {
    bool isPlaying = audioService.isPlaying;
    bool isPaused = audioService.isPaused;

    try {
      /// if not playing and not paused then it means new audio
      if ((!isPlaying && !isPaused) || lastPlaying != Assets.lordsPrayerAudio) {
        lastPlaying = Assets.lordsPrayerAudio;
        await audioService.play(Assets.lordsPrayerAudio);
      } else {
        isPlaying ? await audioService.pause() : await audioService.resume();
      }
    } catch (e) {
      snackBar.show(e.toString());
    } finally {
      emit(state.copyWith(playingLordPrayer: !isPlaying));
    }
  }

  dispose() {
    audioService.stop();
    audioService.removeOnCompleteListener(_onAudioComplete);
    emit(LordPrayerState.initial());
  }

  void _onAudioComplete() {
    // Handle audio completion here
    emit(LordPrayerState.initial());
  }
}
