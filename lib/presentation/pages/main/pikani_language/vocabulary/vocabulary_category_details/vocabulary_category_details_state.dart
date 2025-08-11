import 'package:pikani/domain/entities/vocabulry_category.dart';

class VocabularyCategoryDetailsState {
final bool loading;
final VocabularyCategory categoryDetails;
final VocabularyItem selectedCategoryItem;
const VocabularyCategoryDetailsState({required this.selectedCategoryItem, required this.loading,required this.categoryDetails});

factory VocabularyCategoryDetailsState.initial() =>  VocabularyCategoryDetailsState(selectedCategoryItem: VocabularyItem(english: "", phonics: "", translation: "", assetPath: ""), loading: false,categoryDetails: VocabularyCategory(title: "",imageUrl: "",isNew: false,actionList: [],phonics: "",translation: ""));

VocabularyCategoryDetailsState copyWith({bool? loading,VocabularyCategory? categoryDetails,VocabularyItem? selectedCategoryItem}) => VocabularyCategoryDetailsState(selectedCategoryItem: selectedCategoryItem ?? this.selectedCategoryItem, categoryDetails: categoryDetails ?? this.categoryDetails, loading: loading??this.loading);
}
