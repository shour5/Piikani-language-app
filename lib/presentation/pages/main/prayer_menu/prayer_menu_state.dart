import 'prayer_menu_initial_params.dart';

class PrayerMenuState {
final bool loading;
const PrayerMenuState({required this.loading});

factory PrayerMenuState.initial() => const PrayerMenuState(loading: false);

PrayerMenuState copyWith({bool? loading}) => PrayerMenuState(loading: loading??this.loading);
}
