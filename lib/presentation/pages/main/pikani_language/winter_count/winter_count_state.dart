
class WinterCountState {
final bool loading;
const WinterCountState({required this.loading});

factory WinterCountState.initial() => const WinterCountState(loading: false);

WinterCountState copyWith({bool? loading}) => WinterCountState(loading: loading??this.loading);
}
