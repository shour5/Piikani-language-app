import 'package:equatable/equatable.dart';

class NaapiStory extends Equatable {
  final int? id;
  final String? title;
  final String? image;
  final String? audiosPath;
  final String? imagesPath;

  final List<Story>? stories;

  const NaapiStory({
    this.id,
    this.title,
    this.image,
    this.audiosPath,
    this.imagesPath,
    this.stories,
  });

  // Factory constructor for shimmer effect
  factory NaapiStory.shimmer() {
    return const NaapiStory(
      id: 0,
      title: 'Loading...',
      image: '',
      audiosPath: '',
      imagesPath: '',
      stories: [],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['image'] = this.image;
    data['audiosPath'] = this.audiosPath;
    data['imagesPath'] = this.imagesPath;
    if (this.stories != null) {
      data['stories'] = this.stories!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  NaapiStory copyWith({
    int? id,
    String? title,
    String? image,
    String? audiosPath,
    String? imagesPath,

    List<Story>? stories,
  }) {
    return NaapiStory(
      id: id ?? this.id,
      title: title ?? this.title,
      image: image ?? this.image,
      audiosPath: audiosPath ?? this.audiosPath,
      imagesPath: imagesPath ?? this.imagesPath,
      stories: stories ?? this.stories,
    );
  }

  @override
  List<Object?> get props => [
    id,
    title,
    image,
    stories,
    imagesPath,
    audiosPath,
  ];
}

class Story extends Equatable {
  final String? english;
  final String? pikani;
  final String? phonics;
  final String? image;
  final String? audio;

  const Story({
    this.english,
    this.pikani,
    this.phonics,
    this.image,
    this.audio,
  });

  // Factory constructor for shimmer effect
  factory Story.shimmer() {
    return const Story(
      english: 'Loading...',
      pikani: 'Loading...',
      phonics: 'Loading...',
      image: '',
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['english'] = this.english;
    data['pikani'] = this.pikani;
    data['phonics'] = this.phonics;
    data['image'] = this.image;
    data['audio'] = this.audio;
    return data;
  }

  Story copyWith({
    String? english,
    String? pikani,
    String? phonics,
    String? image,
    String? audio,
  }) {
    return Story(
      english: english ?? this.english,
      pikani: pikani ?? this.pikani,
      phonics: phonics ?? this.phonics,
      image: image ?? this.image,
      audio: audio ?? this.audio,
    );
  }

  @override
  List<Object?> get props => [english, pikani, phonics, image, audio];
}
