import '../../domain/entities/ai_photo.dart';

class AIPhotoJson {
  String? id;
  String? title;
  String? description;
  String? image;
  String? video;
  bool? isLandscape;

  AIPhotoJson({
    this.id,
    this.title,
    this.description,
    this.image,
    this.video,
    this.isLandscape,
  });

  AIPhotoJson.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    image = json['image'];
    video = json['video'];
    isLandscape = json['isLandscape'];
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

  AIPhoto toDomain() {
    return AIPhoto(
      id: id,
      title: title,
      description: description,
      image: "assets/images/ai_photos/$image",
      video: "assets/videos/ai_photos/$video",
      isLandscape: isLandscape ?? false,
    );
  }
}
