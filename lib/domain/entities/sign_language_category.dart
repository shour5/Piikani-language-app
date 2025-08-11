import 'package:equatable/equatable.dart';

class SignLanguageCategory extends Equatable{
  final String id;
  final String name;
  final String image;
  final String videoFolderPath;
  final List<SignLanguageCategoryItem> items;

  SignLanguageCategory({
    required this.id,
    required this.name,
    required this.image,
    required this.videoFolderPath,
    required this.items,
  });

  factory SignLanguageCategory.fromJson(Map<String, dynamic> json) {
    return SignLanguageCategory(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      image: json['image'] ?? '',
      videoFolderPath: json['videoFolderPath'] ?? '',
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => SignLanguageCategoryItem.fromJson(e))
          .toList() ??
          [],
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'image': image,
    'videoFolderPath': videoFolderPath,
    'items': items.map((item) => item.toJson()).toList(),
  };

  @override
  // TODO: implement props
  List<Object?> get props => [id,name,image,videoFolderPath,items];
}

class SignLanguageCategoryItem extends Equatable{
  final String english;
  final String blackfoot;
  final String phonics;
  final String video;

  SignLanguageCategoryItem({
    required this.english,
    required this.blackfoot,
    required this.phonics,
    required this.video,
  });

  factory SignLanguageCategoryItem.fromJson(Map<String, dynamic> json) {
    return SignLanguageCategoryItem(
      english: json['english'] ?? '',
      blackfoot: json['blackfoot'] ?? '',
      phonics: json['phonics'] ?? '',
      video: json['video'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
    'english': english,
    'blackfoot': blackfoot,
    'phonics': phonics,
    'video': video,
  };

  @override
  // TODO: implement props
  List<Object?> get props => [english,blackfoot,phonics,video];
}
