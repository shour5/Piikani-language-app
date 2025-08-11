import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:pikani/presentation/pages/main/sign_language/sign_language_category_detail/sign_language_category_detail_initial_params.dart';
import 'package:pikani/presentation/pages/main/sign_language/sign_language_info/sign_language_info_initial_params.dart';
import 'package:pikani/presentation/pages/main/sign_language/sign_language_short_phrases/sign_language_short_phrases_initial_params.dart';
import 'sign_language_initial_params.dart';
import 'sign_language_state.dart';
import 'sign_language_navigator.dart';

class SignLanguageCubit extends Cubit<SignLanguageState> {
  SignLanguageNavigator navigator;

  SignLanguageCubit({required this.navigator})
    : super(SignLanguageState.initial());

  BuildContext get context => navigator.context;

  onInit(SignLanguageInitialParams initialParams) {}

  btnAction(int index) {
    switch (index) {
      case 0:
        _navigateToSigningInfo();
        break;
      case 1:
        _navigateToShortPhrases();
        break;
    }
    emit(state.copyWith(selectedIndex: index));
  }

  _navigateToSigningInfo() {
    navigator.openSignLanguageInfo(SignLanguageInfoInitialParams());
  }

  _navigateToShortPhrases() {
    navigator.openSignLanguageShortPhrases(SignLanguageShortPhrasesInitialParams());
  }

  categoryAction(String categoryId){
    navigator.openSignLanguageCategoryDetail(SignLanguageCategoryDetailInitialParams(
      id: categoryId
    ));
  }
}
