import 'package:equatable/equatable.dart';
import 'package:pikani/domain/entities/sign_language_category.dart';

class SignLanguageCategoryDetailState extends Equatable {
  final bool loading;
  final SignLanguageCategory? category;
  final SignLanguageCategoryItem? selectedItem;

  const SignLanguageCategoryDetailState({
    required this.loading,
    this.category,
    this.selectedItem,
  });

  factory SignLanguageCategoryDetailState.initial() =>
      const SignLanguageCategoryDetailState(loading: false);

  SignLanguageCategoryDetailState copyWith({
    bool? loading,
    SignLanguageCategory? category,
    final SignLanguageCategoryItem? selectedItem,
  }) => SignLanguageCategoryDetailState(
    loading: loading ?? this.loading,
    category: category ?? this.category,
    selectedItem: selectedItem ?? this.selectedItem,
  );

  @override
  // TODO: implement props
  List<Object?> get props => [loading, category, selectedItem];
}
