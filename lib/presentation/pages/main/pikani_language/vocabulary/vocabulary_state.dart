import 'package:pikani/domain/entities/vocabulry_category.dart';

class VocabularyState {
  final bool loading;
  final List<VocabularyCategory> categories;

  const VocabularyState({required this.loading, required this.categories});

  factory VocabularyState.initial() =>
      const VocabularyState(loading: false, categories: []);

  VocabularyState copyWith({
    bool? loading,
    List<VocabularyCategory>? categories,
  }) => VocabularyState(
    categories: categories ?? this.categories,
    loading: loading ?? this.loading,
  );
}
