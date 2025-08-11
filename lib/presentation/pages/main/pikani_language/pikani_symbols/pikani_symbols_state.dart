
class PikaniSymbolsState {
final bool loading;
const PikaniSymbolsState({required this.loading});

factory PikaniSymbolsState.initial() => const PikaniSymbolsState(loading: false);

PikaniSymbolsState copyWith({bool? loading}) => PikaniSymbolsState(loading: loading??this.loading);
}
