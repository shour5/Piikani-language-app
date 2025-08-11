import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:pikani/domain/entities/vocabulry_category.dart';
import 'package:pikani/domain/repositories/database/remote_database_repository.dart';
import 'vocabulary_category_details/vocabulary_category_details_initial_params.dart';
import 'vocabulary_initial_params.dart';
import 'vocabulary_state.dart';
import 'vocabulary_navigator.dart';

class VocabularyCubit extends Cubit<VocabularyState> {
  VocabularyNavigator navigator;
  RemoteDatabaseRepository repository;

  VocabularyCubit({required this.navigator, required this.repository})
    : super(VocabularyState.initial());

  BuildContext get context => navigator.context;

  onInit(VocabularyInitialParams initialParams) {
    fetchCategories();
  }

  Future<void> fetchCategories() async {
    try {
      emit(state.copyWith(loading: true));
      final categories = await repository.fetchCategories();
      emit(state.copyWith(categories: categories, loading: false));
    } catch (e) {
      emit(state.copyWith(loading: false));
    }
  }

  void categoryAction(VocabularyCategory category){
    navigator.openVocabularyCategoryDetails(
      VocabularyCategoryDetailsInitialParams(
        categoryTitle: category.title,
      ),
    );
  }
}
