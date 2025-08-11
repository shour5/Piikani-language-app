import 'package:equatable/equatable.dart';


class PikaniLanguageState extends Equatable {
  final bool loading;

  const PikaniLanguageState({
    required this.loading,
  });

  factory PikaniLanguageState.initial() =>
      const PikaniLanguageState(loading: false,);

  PikaniLanguageState copyWith({bool? loading,}) =>
      PikaniLanguageState(
        loading: loading ?? this.loading,
      );

  @override
  // TODO: implement props
  List<Object?> get props => [loading];
}
