import '../../domain/entities/naapi_story.dart';

class NaapiStoryJson {
  int? id;
  String? title;
  String? image;
  String? audiosPath;
  String? imagesPath;
  List<StoryJson>? stories;

  NaapiStoryJson({
    this.id,
    this.title,
    this.image,
    this.audiosPath,
    this.imagesPath,
    this.stories,
  });

  NaapiStoryJson.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    audiosPath = json['audiosPath'];
    imagesPath = json['imagesPath'];
    if (json['stories'] != null) {
      stories = <StoryJson>[];
      json['stories'].forEach((v) {
        stories!.add(StoryJson.fromJson(v));
      });
    }
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

  NaapiStory toDomain() {
    return NaapiStory(
      id: id,
      title: title,
      image: image,
      audiosPath: audiosPath,
      imagesPath: imagesPath,
      stories:
          stories?.indexed.map((entry) {
            final (index, story) = entry; // Destructure the tuple
            return story.toDomain().copyWith(
              image: imagesPath!+index.toString()+".webp",
              audio: audiosPath!+index.toString()+".wav",
            ); // Or use index if needed
          }).toList(),
    );
  }
}

class StoryJson {
  String? english;
  String? pikani;
  String? phonics;
  String? image;
  String? audio;

  StoryJson({this.english, this.pikani, this.phonics, this.image, this.audio});

  StoryJson.fromJson(Map<String, dynamic> json) {
    english = json['english'];
    pikani = json['pikani'];
    phonics = json['phonics'];
    image = json['image'];
    audio = json['audio'];
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

  Story toDomain() {
    return Story(
      english: english,
      pikani: pikani,
      phonics: phonics,
      image: image,
      audio: audio,
    );
  }
}
