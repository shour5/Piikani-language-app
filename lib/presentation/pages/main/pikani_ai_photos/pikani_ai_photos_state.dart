import 'package:equatable/equatable.dart';
import 'package:pikani/domain/entities/ai_photo.dart';


class PikaniAiPhotosState extends Equatable {
  final bool loading;
  final List<AIPhoto> aiPhotos;

  const PikaniAiPhotosState({required this.loading, required this.aiPhotos});

  factory PikaniAiPhotosState.initial() =>
      const PikaniAiPhotosState(loading: false, aiPhotos: []);

  PikaniAiPhotosState copyWith({bool? loading, List<AIPhoto>? aiPhotos}) =>
      PikaniAiPhotosState(
        loading: loading ?? this.loading,
        aiPhotos: aiPhotos ?? this.aiPhotos,
      );

  @override
  // TODO: implement props
  List<Object?> get props => [loading, aiPhotos];
}
