import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:pikani/domain/entities/vocabulry_category.dart';
import 'package:pikani/domain/repositories/database/remote_database_repository.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'search_initial_params.dart';
import 'search_state.dart';
import 'search_navigator.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchNavigator navigator;
  RemoteDatabaseRepository repository;
  SearchCubit({required this.navigator, required this.repository})
    : super(SearchState.initial());

  BuildContext get context => navigator.context;

  onInit(SearchInitialParams initialParams) {
    fetchCategories();
    setupScrollListener();
  }


ScrollController categoryController = ScrollController();
final ItemScrollController itemScrollController = ItemScrollController();
final ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();


void onDispose() {
  itemPositionsListener.itemPositions.removeListener(setupScrollListener);
}

final player = AudioPlayer();


void playWav({required String audioPath}) async {
  print(audioPath.toString());
  await player.play(AssetSource(audioPath));
}

void stopWav() async {
  await player.stop();
}

  bool showSearch = false;
  TextEditingController searchController = TextEditingController();
  ScrollController gridController = ScrollController();


  void searchVocabulary(String query) {
  if (query.isEmpty) {
    emit(state.copyWith(filteredCategories: state.categories));
    return;
  }

  final lowerQuery = query.toLowerCase();

  final filteredCategories = state.categories.map((category) {
    if (category.sections.isNotEmpty) {
      // Handle sections
      final filteredSections = category.sections.map((section) {
        final filteredItems = section.items.where((item) =>
          item.english.toLowerCase().contains(lowerQuery) ||
          item.phonics.toLowerCase().contains(lowerQuery) ||
          item.translation.toLowerCase().contains(lowerQuery)
        ).toList();

        if (filteredItems.isEmpty) return null;

        return VocabularySection(title: section.title, items: filteredItems);
      }).whereType<VocabularySection>().toList();

      if (filteredSections.isEmpty) return null;

      return VocabularyCategory(
        title: category.title,
        imageUrl: category.imageUrl,
        isNew: true,
        phonics: category.phonics,
        translation: category.translation,
        actionList: [], // No action list when using sections
        sections: filteredSections,
      );
    } else {
      // Handle actionList
      final filteredItems = category.actionList.where((item) =>
        item.english.toLowerCase().contains(lowerQuery) ||
        item.phonics.toLowerCase().contains(lowerQuery) ||
        item.translation.toLowerCase().contains(lowerQuery)
      ).toList();

      if (filteredItems.isEmpty) return null;

      return VocabularyCategory(
        title: category.title,
        imageUrl: category.imageUrl,
        isNew: true,
        phonics: category.phonics,
        translation: category.translation,
        actionList: filteredItems,
        sections: [], // No sections in this case
      );
    }
  }).whereType<VocabularyCategory>().toList();

  emit(state.copyWith(filteredCategories: filteredCategories));
}

  void toggleSearch() {
    showSearch = !showSearch;
    updateShowSearch(showSearch: showSearch);
    if (!showSearch) {
      searchController.clear();
      updateFilterCategories(filteredCategories: state.categories);
    }
  }


  updateShowSearch({required bool showSearch}) {
    emit(state.copyWith(showSearch: showSearch));
  }

   updateSectionTitle({required String title}) {
    emit(state.copyWith(selectedSectionTitle: title));
  }

    updateSectionName({required String title}) {
    emit(state.copyWith(sectionName: title));
  }

  updateFilterCategories({required List<VocabularyCategory> filteredCategories}) {
    emit(state.copyWith(filteredCategories: filteredCategories));
  }

    updateCurrentSections({required VocabularySection sections}) {
    emit(state.copyWith(currentfilterSections: sections));
  }
    updateSections({required List<VocabularySection> sections}) {
    emit(state.copyWith(sections: sections));
  }


  updateFilterSections({required List<VocabularySection> sections}) {
    emit(state.copyWith(filterSections: sections));
  }


  updateCategoriesIndex({required int index}) {
    emit(state.copyWith(selectedCategoryIndex: index));
  }

  updateSubCategoriesIndex({required int index}) {
    emit(state.copyWith(selectedSubCategoryIndex: index));
  }

  updateSideCategoriesIndex({required int index}) {
    emit(state.copyWith(sideCategoryIndex: index));
  }

  updateCategories({required List<VocabularyCategory> categories}) {
    emit(state.copyWith(categories: categories));
  }

  updateUserTapManually({required bool tap}) {
    emit(state.copyWith(userTappedManually: tap));
  }

void setupScrollListener() {
  itemPositionsListener.itemPositions.addListener(() {
    final positions = itemPositionsListener.itemPositions.value;

    if (positions.isNotEmpty) {
      final firstVisibleIndex = positions
          .where((item) => item.itemLeadingEdge >= 0)
          .map((e) => e.index)
          .fold<int?>(null, (prev, element) => prev == null ? element : prev < element ? prev : element);

      if (firstVisibleIndex != null && firstVisibleIndex != state.selectedCategoryIndex && !state.userTappedManually) {
        updateSideCategoriesIndex(index: firstVisibleIndex);
      }
    }
  });
}

  Future<void> fetchCategories() async {
    try {
      emit(state.copyWith(loading: true));
      final categories = await repository.fetchCategories();
      emit(
        state.copyWith(
          categories: categories,
          loading: false,
          filteredCategories:categories,

          selectedSectionTitle: categories.first.actionList.first.translation,
        ),
      );
    } catch (e) {
      emit(state.copyWith(loading: false));
    }
  }
}
