
class PiikaniClansState {
final bool loading;
const PiikaniClansState({required this.loading});

factory PiikaniClansState.initial() => const PiikaniClansState(loading: false);

PiikaniClansState copyWith({bool? loading}) => PiikaniClansState(loading: loading??this.loading);
}
