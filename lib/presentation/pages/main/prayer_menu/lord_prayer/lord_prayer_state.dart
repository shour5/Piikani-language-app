import 'package:equatable/equatable.dart';

import 'lord_prayer_initial_params.dart';

class LordPrayerState extends Equatable {
  final bool loading;
  final bool playingShirly;
  final bool playingLordPrayer;

  const LordPrayerState({
    required this.loading,
    required this.playingLordPrayer,
    required this.playingShirly,
  });

  factory LordPrayerState.initial() => const LordPrayerState(
    loading: false,
    playingLordPrayer: false,
    playingShirly: false,
  );

  LordPrayerState copyWith({
    bool? loading,
    bool? playingLordPrayer,
    bool? playingShirly,
  }) => LordPrayerState(
    loading: loading ?? this.loading,
    playingLordPrayer: playingLordPrayer ?? this.playingLordPrayer,
    playingShirly: playingShirly ?? this.playingShirly,
  );

  @override
  // TODO: implement props
  List<Object?> get props => [loading, playingShirly, playingLordPrayer];
}
