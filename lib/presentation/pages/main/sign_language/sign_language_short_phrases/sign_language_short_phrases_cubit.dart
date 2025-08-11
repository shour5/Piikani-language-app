import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../../../../../domain/entities/sign_language_short_phrase.dart';
import 'sign_language_short_phrases_initial_params.dart';
import 'sign_language_short_phrases_state.dart';
import 'sign_language_short_phrases_navigator.dart';

class SignLanguageShortPhrasesCubit
    extends Cubit<SignLanguageShortPhrasesState> {
  SignLanguageShortPhrasesNavigator navigator;

  SignLanguageShortPhrasesCubit({required this.navigator})
    : super(SignLanguageShortPhrasesState.initial());

  BuildContext get context => navigator.context;

  late VideoPlayerController controller;
  onInit(SignLanguageShortPhrasesInitialParams initialParams) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      emit(state.copyWith(selectedPhrase: signLanguagePhrases[0]));
    });
  }

  final List<SignLanguageShortPhrase> signLanguagePhrases = [
    SignLanguageShortPhrase(
      phrase: 'I am going to pick apples in the states.',
      piikani: 'Nitayakoy’ssi aapasstaamiinaammiksi ami amsskaapoohtsi.',
      phonic:
          'KNEE DAA YAK OOY SSEE – AA PASSS DAA MEEN NAAM IKSEE- UM SSK POOH TSEE',
      videoUrl: "assets/videos/short_phrases/video_1.mp4",
    ),
    SignLanguageShortPhrase(
      phrase: 'I am going hunting, shoot a deer, need food in the house.',
      piikani: 'Nitayakoskimaawa awakaasii, maataakoyoipmaa.',
      phonic: 'KNEE DAA YAK OOT SKI MAA – AAWA GAA SEE –  MAA TAA OH GOO YOP',
      videoUrl: "assets/videos/short_phrases/video_2.mp4",
    ),
    SignLanguageShortPhrase(
      phrase: 'I am going to Calgary to buy clothes for the children.',
      piikani:
          'Nitakitapoo Mohkinsstsis, Niitakistoohsatskoowayiwa Pookaaiksi.',
      phonic:
          'KNEE DAA KEE TAA POO – MOOH KIN SS TSES- KNEE DAA KSEE TOOH SAT SKOO WAA YAA – BOO GAA IKSEE',
      videoUrl: "assets/videos/short_phrases/video_3.mp4",
    ),
    SignLanguageShortPhrase(
      phrase: 'I am going to Lethbridge to watch the rodeo.',
      piikani: 'Nitakitapoo Sikoohkotok  nitakotossapi kana’pssin.',
      phonic:
          'KNEE DAA KEE DAA PO – SIK OOH KO TOK – KNEE DAA GOO TOO SSAP – GA NAA PSSIN',
      videoUrl: "assets/videos/short_phrases/video_4.mp4",
    ),
  ];

  onPhraseTap(SignLanguageShortPhrase phrase) {
    emit(state.copyWith(selectedPhrase: phrase));
  }

  replayVideo() async {
    if (controller.value.isInitialized) {
      await controller.pause();
      await controller.seekTo(Duration.zero);
      await controller.play();
    }
  }

  dispose(){
    emit(SignLanguageShortPhrasesState.initial());
  }
}
