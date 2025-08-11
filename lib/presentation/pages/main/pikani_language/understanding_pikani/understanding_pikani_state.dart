
class UnderstandingPikaniState {
final bool loading;
const UnderstandingPikaniState({required this.loading});

factory UnderstandingPikaniState.initial() => const UnderstandingPikaniState(loading: false);

UnderstandingPikaniState copyWith({bool? loading}) => UnderstandingPikaniState(loading: loading??this.loading);
}
