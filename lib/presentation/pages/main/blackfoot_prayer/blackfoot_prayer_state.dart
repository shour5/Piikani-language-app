import 'package:equatable/equatable.dart';

class BlackfootPrayerState extends Equatable {
  final bool loading;
  final bool isPlaying;

  const BlackfootPrayerState({required this.loading, required this.isPlaying});

  factory BlackfootPrayerState.initial() =>
      const BlackfootPrayerState(loading: false, isPlaying: false);

  BlackfootPrayerState copyWith({bool? loading, bool? isPlaying}) =>
      BlackfootPrayerState(
        loading: loading ?? this.loading,
        isPlaying: isPlaying ?? this.isPlaying,
      );

  @override
  // TODO: implement props
  List<Object?> get props => [loading,isPlaying];
}
