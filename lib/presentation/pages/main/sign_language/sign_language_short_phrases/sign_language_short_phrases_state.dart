import 'package:equatable/equatable.dart';
import 'package:pikani/domain/entities/sign_language_short_phrase.dart';


class SignLanguageShortPhrasesState extends Equatable {
  final bool loading;
  final SignLanguageShortPhrase? selectedPhrase;

  const SignLanguageShortPhrasesState({
    required this.loading,
    this.selectedPhrase,
  });

  factory SignLanguageShortPhrasesState.initial() =>
      const SignLanguageShortPhrasesState(loading: false);

  SignLanguageShortPhrasesState copyWith({
    bool? loading,
    SignLanguageShortPhrase? selectedPhrase,
  }) => SignLanguageShortPhrasesState(
    loading: loading ?? this.loading,
    selectedPhrase: selectedPhrase ?? this.selectedPhrase,
  );

  @override
  // TODO: implement props
  List<Object?> get props => [loading, selectedPhrase];
}
