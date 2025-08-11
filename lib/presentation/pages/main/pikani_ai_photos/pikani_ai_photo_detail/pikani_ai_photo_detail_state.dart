import 'package:equatable/equatable.dart';
import 'package:pikani/domain/entities/ai_photo.dart';


class PikaniAiPhotoDetailState extends Equatable {
  final bool loading;
  final AIPhoto aiPhoto;

  const PikaniAiPhotoDetailState({
    required this.loading,
    required this.aiPhoto,
  });

  factory PikaniAiPhotoDetailState.initial() =>
      PikaniAiPhotoDetailState(loading: false, aiPhoto: AIPhoto.loading());

  PikaniAiPhotoDetailState copyWith({bool? loading, AIPhoto? aiPhoto}) =>
      PikaniAiPhotoDetailState(
        loading: loading ?? this.loading,
        aiPhoto: aiPhoto ?? this.aiPhoto,
      );

  @override
  // TODO: implement props
  List<Object?> get props => [aiPhoto, loading];
}
