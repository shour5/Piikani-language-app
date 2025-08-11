import 'package:equatable/equatable.dart';

class AIPhoto extends Equatable {
  final String? id;
  final String? title;
  final String? description;
  final String? image;
  final String? video;
  final bool? isLandscape;

  const AIPhoto({
    this.id,
    this.title,
    this.description,
    this.image,
    this.video,
    this.isLandscape,
  });

  factory AIPhoto.loading() => const AIPhoto(
    id: 'Loading id...',
    title: 'Loading Title...',
    description: 'Loading description...',
    image: 'placeholder.png',
    // A common placeholder or empty string
    video: '',
    // Empty for no video, or a placeholder path
    isLandscape: false,
  );

  AIPhoto copyWith({
    String? id,
    String? title,

    String? description,
    String? image,
    String? video,
    bool? isLandscape,
  }) {
    return AIPhoto(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      image: image ?? this.image,
      video: video ?? this.video,
      isLandscape: isLandscape ?? this.isLandscape,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['description'] = description;
    data['image'] = image;
    data['video'] = video;
    data['isLandscape'] = isLandscape;
    return data;
  }

  @override
  List<Object?> get props => [
    id,
    title,
    description,
    image,
    video,
    isLandscape,
  ];
}
