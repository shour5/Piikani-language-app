import 'package:pikani/domain/entities/vocabulry_category.dart';


class SearchState {
final bool loading;
List<VocabularyCategory> categories;
List<VocabularyCategory> filteredCategories;
int sideCategoryIndex;
int selectedCategoryIndex;
int selectedSubCategoryIndex;
String selectedSectionTitle;
String sectionName;
bool showSearch;
List<VocabularySection> sections;
List<VocabularySection> filterSections;
VocabularySection  currentfilterSections;
final bool userTappedManually; // default: false
SearchState({required this.sectionName, required this.userTappedManually, required this.sideCategoryIndex,required this.currentfilterSections,required this.filterSections, required this.selectedSectionTitle, required this.sections, required this.showSearch,required this.loading,required this.categories,required this.filteredCategories,required this.selectedCategoryIndex,required this.selectedSubCategoryIndex});

factory SearchState.initial() =>  SearchState( sectionName: "", userTappedManually: false, sideCategoryIndex: 0, currentfilterSections:VocabularySection(items: [],title: "") , filterSections: [], selectedSectionTitle: "", sections: [],showSearch: false, loading: false,categories: [],filteredCategories: [],selectedCategoryIndex: 0,selectedSubCategoryIndex: 0);

SearchState copyWith({
bool? showSearch,  
bool? loading,List<VocabularyCategory>? categories,
String? selectedSectionTitle,
int? sideCategoryIndex,
List<VocabularySection>? sections,
List<VocabularySection>? filterSections,
VocabularySection?  currentfilterSections,
String? sectionName,
bool? userTappedManually,// default: false

List<VocabularyCategory>? filteredCategories,int? selectedCategoryIndex,int? selectedSubCategoryIndex}) => SearchState(sectionName: sectionName ?? this.sectionName, userTappedManually: userTappedManually ?? this.userTappedManually,sideCategoryIndex: sideCategoryIndex ?? this.sideCategoryIndex,currentfilterSections: currentfilterSections ?? this.currentfilterSections, filterSections: filterSections ?? this.filterSections,selectedSectionTitle: selectedSectionTitle ?? this.selectedSectionTitle, sections: sections ?? this.sections,showSearch:  showSearch ?? this.showSearch,selectedSubCategoryIndex: selectedSubCategoryIndex ?? this.selectedSubCategoryIndex, selectedCategoryIndex: selectedCategoryIndex ?? this.selectedCategoryIndex, categories: categories ?? this.categories,filteredCategories: filteredCategories ?? this.filteredCategories, loading: loading??this.loading);
}
