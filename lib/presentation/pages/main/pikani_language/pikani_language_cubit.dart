import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:pikani/presentation/pages/main/pikani_language/piikani_clans/piikani_clans_initial_params.dart';
import 'package:pikani/presentation/pages/main/pikani_language/pikani_symbols/pikani_symbols_initial_params.dart';
import 'package:pikani/presentation/pages/main/pikani_language/search/search_initial_params.dart';
import 'package:pikani/presentation/pages/main/pikani_language/understanding_pikani/understanding_pikani_initial_params.dart';
import 'package:pikani/presentation/pages/main/pikani_language/winter_count/winter_count_initial_params.dart';
import 'package:pikani/presentation/pages/main/pikani_language/vocabulary/vocabulary_initial_params.dart';
import 'pikani_language_initial_params.dart';
import 'pikani_language_state.dart';
import 'pikani_language_navigator.dart';

class PikaniLanguageCubit extends Cubit<PikaniLanguageState> {
  PikaniLanguageNavigator navigator;

  PikaniLanguageCubit({required this.navigator})
    : super(PikaniLanguageState.initial());

  BuildContext get context => navigator.context;

  onInit(PikaniLanguageInitialParams initialParams) {}

  btnAction(int index) {
    print(index);
    switch (index) {
      case 0:
        _navigateToVocabulary();
        break;
      case 1:
        _navigateToUnderstanding();
        break;
      case 2:
        _navigateToSymbols();
        break;
      case 3:
        _navigateToClans();
        break;
      case 4:
        _navigateToWinterCount();
        break;
      case 5:
        _navigateToSearch();
        break;
    }
  }

  _navigateToVocabulary() {
    navigator.openVocabulary(VocabularyInitialParams());
  }

  _navigateToUnderstanding() {
    navigator.openUnderstandingPikani(UnderstandingPikaniInitialParams());
  }

  _navigateToSymbols() {
    navigator.openPikaniSymbols(PikaniSymbolsInitialParams());
  }

  _navigateToClans() {
    navigator.openPiikaniClans(PiikaniClansInitialParams());
  }

  _navigateToWinterCount() {
    navigator.openWinterCount(WinterCountInitialParams());
  }

  _navigateToSearch() {
    navigator.openSearch(SearchInitialParams());
  }
}
