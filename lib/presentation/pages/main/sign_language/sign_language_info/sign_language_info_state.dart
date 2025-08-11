
class SignLanguageInfoState {
final bool loading;
const SignLanguageInfoState({required this.loading});

factory SignLanguageInfoState.initial() => const SignLanguageInfoState(loading: false);

SignLanguageInfoState copyWith({bool? loading}) => SignLanguageInfoState(loading: loading??this.loading);
}
