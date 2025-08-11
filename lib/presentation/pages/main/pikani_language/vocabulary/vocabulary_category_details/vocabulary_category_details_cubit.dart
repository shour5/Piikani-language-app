import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:pikani/domain/entities/vocabulry_category.dart';
import 'package:pikani/domain/repositories/database/remote_database_repository.dart';
import 'vocabulary_category_details_initial_params.dart';
import 'vocabulary_category_details_state.dart';
import 'vocabulary_category_details_navigator.dart';


class VocabularyCategoryDetailsCubit extends Cubit<VocabularyCategoryDetailsState> {
VocabularyCategoryDetailsNavigator navigator;
RemoteDatabaseRepository repository;
VocabularyCategoryDetailsCubit({required this.navigator,required this.repository}) : super(VocabularyCategoryDetailsState.initial());

BuildContext get context => navigator.context;

 onInit(VocabularyCategoryDetailsInitialParams initialParams){

  fetchCategories(initialParams.categoryTitle); 
}


final player = AudioPlayer();


void playWav({required String audioPath}) async {
  print(audioPath.toString());
  await player.play(AssetSource(audioPath));
}

void stopWav() async {
  await player.stop();
}



updateSeletedCategoryItem(VocabularyItem selectedItem){

  emit(state.copyWith(selectedCategoryItem:selectedItem));

}
  Future<void> fetchCategories(String title) async {
    try {
      emit(state.copyWith(loading: true));
      final categories = await repository.fetchCategories();
      VocabularyCategory currentCategory =  categories.firstWhere((element) => element.title == title,);
      updateSeletedCategoryItem(currentCategory.actionList.isEmpty ? currentCategory.sections.first.items.first:currentCategory.actionList[0]);
      emit(state.copyWith(categoryDetails: currentCategory,loading: false));
    } catch (e) {
       emit(state.copyWith(loading: false));
    }
  }
}
