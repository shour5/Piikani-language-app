import 'package:equatable/equatable.dart';
import 'package:pikani/domain/entities/naapi_story.dart';

class PiikaniStoryDetailState extends Equatable {
  final bool loading;
  final NaapiStory naapiStory;
  final Story? selectedStory;

  const PiikaniStoryDetailState({
    required this.loading,
    required this.naapiStory,
    this.selectedStory,
  });

  factory PiikaniStoryDetailState.initial() =>
      PiikaniStoryDetailState(loading: true, naapiStory: NaapiStory.shimmer());

  PiikaniStoryDetailState copyWith({
    bool? loading,
    NaapiStory? naapiStory,
    Story? selectedStory,
  }) => PiikaniStoryDetailState(
    loading: loading ?? this.loading,
    naapiStory: naapiStory ?? this.naapiStory,
    selectedStory: selectedStory ?? this.selectedStory,
  );

  @override
  // TODO: implement props
  List<Object?> get props => [loading, naapiStory, selectedStory];
}
