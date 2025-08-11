import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Vocabulary Model
class VocabularyCategory {
  final String title;
  final String imageUrl;
  final String phonics;
  final String translation;
  final bool isNew;
  List<VocabularyItem> actionList;
  List<VocabularySection> sections;

  VocabularyCategory({
    required this.title,
    required this.imageUrl,
    required this.isNew,
    required this.actionList,
    required this.phonics,
    required this.translation,
    this.sections = const [], // default to empty if not provided
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'imageUrl': imageUrl,
      'isNew': isNew,
      'lang1': phonics,
      'lang2': translation,
      'actionList': actionList.map((e) => e.toMap()).toList(),
      'sections': sections.map((e) => e.toMap()).toList(),
    };
  }

  factory VocabularyCategory.fromMap(Map<String, dynamic> map) {
    return VocabularyCategory(
      title: map['title'],
      imageUrl: map['imageUrl'],
      isNew: map['isNew'],
      phonics: map['lang1'],
      translation: map['lang2'],
      actionList: List<VocabularyItem>.from(
        (map['actionList'] as List).map((e) => VocabularyItem.fromMap(e)),
      ),
      sections: map['sections'] != null
          ? List<VocabularySection>.from(
              (map['sections'] as List).map((e) => VocabularySection.fromMap(e)),
            )
          : [],
    );
  }
}


class VocabularySection {
  final String title;
  final List<VocabularyItem> items;

  VocabularySection({
    required this.title,
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'items': items.map((e) => e.toMap()).toList(),
    };
  }

  factory VocabularySection.fromMap(Map<String, dynamic> map) {
    return VocabularySection(
      title: map['title'],
      items: List<VocabularyItem>.from(
        (map['items'] as List).map((e) => VocabularyItem.fromMap(e)),
      ),
    );
  }
}

class VocabularyItem {
  final String english;
  final String phonics;
  final String translation;
  final String assetPath;
  final String? imageUrl;
  final Color? color;

  VocabularyItem({
    required this.english,
    required this.phonics,
    required this.translation,
    required this.assetPath,
    this.imageUrl = "",
    this.color = null,
  });

  Map<String, dynamic> toMap() {
    return {
      'english': english,
      'lang1': phonics,
      'lang2': translation,
      'assetPath': assetPath,
    };
  }

  factory VocabularyItem.fromMap(Map<String, dynamic> map) {
    return VocabularyItem(
      english: map['english'],
      phonics: map['lang1'],
      translation: map['lang2'],
      assetPath: map['assetPath'],
    );
  }
}