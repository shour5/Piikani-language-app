import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:pikani/presentation/pages/main/blackfoot_prayer/blackfoot_prayer_initial_params.dart';
import 'package:pikani/presentation/pages/main/piikani_stories/piikani_stories_initial_params.dart';
import 'package:pikani/presentation/pages/main/pikani_ai_photos/pikani_ai_photos_initial_params.dart';
import 'package:pikani/presentation/pages/main/pikani_language/pikani_language_initial_params.dart';
import 'package:pikani/presentation/pages/main/prayer_menu/prayer_menu_initial_params.dart';
import 'package:pikani/presentation/pages/main/sign_language/sign_language_initial_params.dart';
import 'main_menu_initial_params.dart';
import 'main_menu_state.dart';
import 'main_menu_navigator.dart';

class MainMenuCubit extends Cubit<MainMenuState> {
  MainMenuNavigator navigator;

  MainMenuCubit({required this.navigator}) : super(MainMenuState.initial());

  BuildContext get context => navigator.context;

  onInit(MainMenuInitialParams initialParams) {}

  btnAction(int index) {
    print(index);
    switch (index) {
      case 0:
        _navigatePrayerMenu();
        break;
      case 1:
        _navigatePikaniLanguage();
        break;
      case 2:
        _navigateToSignLanguage();
        break;
      case 3:
        _navigateToAIPhotos();
        break;
      case 4:
        _navigateToPiikaniStories();
        break;


    }
  }

  _navigatePrayerMenu() {
    navigator.openPrayerMenu(PrayerMenuInitialParams());
  }
  _navigatePikaniLanguage() {
    navigator.openPikaniLanguage(PikaniLanguageInitialParams());
  }
  _navigateToSignLanguage() {
    navigator.openSignLanguage(SignLanguageInitialParams());
  }
  _navigateToAIPhotos() {
    navigator.openPikaniAiPhotos(PikaniAiPhotosInitialParams(
    ));
  }

  _navigateToPiikaniStories() {
    navigator.openPiikaniStories(PiikaniStoriesInitialParams(
    ));
  }


}
