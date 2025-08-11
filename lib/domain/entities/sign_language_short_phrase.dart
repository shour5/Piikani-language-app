import 'package:equatable/equatable.dart';

class SignLanguageShortPhrase extends Equatable {
  final String videoUrl;
  final String phonic;
  final String phrase;
  final String piikani;

  const SignLanguageShortPhrase({
    required this.videoUrl,
    required this.phonic,
    required this.phrase,
    required this.piikani,
  });

  SignLanguageShortPhrase copyWith({
    String? videoUrl,
    String? phonic,
    String? phrase,
    String? piikani,
  }) {
    return SignLanguageShortPhrase(
      videoUrl: videoUrl ?? this.videoUrl,
      phonic: phonic ?? this.phonic,
      phrase: phrase ?? this.phrase,
      piikani: piikani ?? this.piikani,
    );
  }

  factory SignLanguageShortPhrase.fromJson(Map<String, dynamic> json) {
    return SignLanguageShortPhrase(
      videoUrl: json['videoUrl'] ?? '',
      phonic: json['phonic'] ?? '',
      phrase: json['phrase'] ?? '',
      piikani: json['piikani'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'videoUrl': videoUrl,
      'phonic': phonic,
      'phrase': phrase,
      'piikani': piikani,
    };
  }

  @override
  // TODO: implement props
  List<Object?> get props => [videoUrl, phonic, phrase, piikani];
}
