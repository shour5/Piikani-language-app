import 'package:pikani/domain/entities/naapi_story.dart';
import 'package:pikani/domain/entities/vocabulry_category.dart';

abstract class RemoteDatabaseRepository {
  Future<void> login({required String email, required password});

  Future<List<VocabularyCategory>> fetchCategories();

  Future<List<NaapiStory>> getNaapiStories();

  Future<NaapiStory> getNaapiStoryById({required String id});
}
