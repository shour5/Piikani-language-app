import 'package:equatable/equatable.dart';

class MainMenuState extends Equatable {
  final bool loading;

  const MainMenuState({required this.loading});

  factory MainMenuState.initial() => const MainMenuState(loading: false);

  MainMenuState copyWith({bool? loading}) =>
      MainMenuState(loading: loading ?? this.loading);

  @override
  // TODO: implement props
  List<Object?> get props => [loading];
}
