import 'package:equatable/equatable.dart';
import 'package:pikani/domain/entities/naapi_story.dart';

import 'piikani_stories_initial_params.dart';

class PiikaniStoriesState extends Equatable {
  final bool loading;
  final List<NaapiStory> nappiStories;

  const PiikaniStoriesState({
    required this.loading,
    required this.nappiStories,
  });

  factory PiikaniStoriesState.initial() =>
      const PiikaniStoriesState(loading: false, nappiStories: []);

  PiikaniStoriesState copyWith({
    bool? loading,
    List<NaapiStory>? nappiStories,
  }) => PiikaniStoriesState(
    loading: loading ?? this.loading,
    nappiStories: nappiStories ?? this.nappiStories,
  );

  @override
  // TODO: implement props
  List<Object?> get props => [loading, nappiStories];
}
