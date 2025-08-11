import 'package:equatable/equatable.dart';


class SignLanguageState extends Equatable {
  final bool loading;
  final int selectedIndex;

  const SignLanguageState({required this.loading, required this.selectedIndex});

  factory SignLanguageState.initial() =>
      const SignLanguageState(loading: false, selectedIndex: 0);

  SignLanguageState copyWith({bool? loading, int? selectedIndex}) =>
      SignLanguageState(
        loading: loading ?? this.loading,
        selectedIndex: selectedIndex ?? this.selectedIndex,
      );

  @override
  // TODO: implement props
  List<Object?> get props => [loading, selectedIndex];
}
