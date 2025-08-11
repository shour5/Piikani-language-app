import 'package:pikani/presentation/pages/main/blackfoot_prayer/blackfoot_prayer_cubit.dart';
import 'package:pikani/presentation/pages/main/blackfoot_prayer/blackfoot_prayer_navigator.dart';
import 'package:pikani/presentation/pages/main/main_menu/main_menu_cubit.dart';
import 'package:pikani/presentation/pages/main/main_menu/main_menu_navigator.dart';
import 'package:pikani/presentation/pages/main/piikani_stories/piikani_stories_cubit.dart';
import 'package:pikani/presentation/pages/main/piikani_stories/piikani_stories_navigator.dart';
import 'package:pikani/presentation/pages/main/piikani_stories/piikani_story_detail/piikani_story_detail_cubit.dart';
import 'package:pikani/presentation/pages/main/piikani_stories/piikani_story_detail/piikani_story_detail_navigator.dart';
import 'package:pikani/presentation/pages/main/pikani_ai_photos/pikani_ai_photo_detail/pikani_ai_photo_detail_cubit.dart';
import 'package:pikani/presentation/pages/main/pikani_ai_photos/pikani_ai_photo_detail/pikani_ai_photo_detail_navigator.dart';
import 'package:pikani/presentation/pages/main/pikani_ai_photos/pikani_ai_photos_cubit.dart';
import 'package:pikani/presentation/pages/main/pikani_ai_photos/pikani_ai_photos_navigator.dart';
import 'package:pikani/presentation/pages/main/pikani_language/piikani_clans/piikani_clans_cubit.dart';
import 'package:pikani/presentation/pages/main/pikani_language/piikani_clans/piikani_clans_navigator.dart';
import 'package:pikani/presentation/pages/main/pikani_language/pikani_language_cubit.dart';
import 'package:pikani/presentation/pages/main/pikani_language/pikani_language_navigator.dart';
import 'package:pikani/presentation/pages/main/pikani_language/pikani_symbols/pikani_symbols_cubit.dart';
import 'package:pikani/presentation/pages/main/pikani_language/pikani_symbols/pikani_symbols_navigator.dart';
import 'package:pikani/presentation/pages/main/pikani_language/search/search_cubit.dart';
import 'package:pikani/presentation/pages/main/pikani_language/search/search_navigator.dart';
import 'package:pikani/presentation/pages/main/pikani_language/understanding_pikani/understanding_pikani_cubit.dart';
import 'package:pikani/presentation/pages/main/pikani_language/understanding_pikani/understanding_pikani_navigator.dart';
import 'package:pikani/presentation/pages/main/pikani_language/winter_count/winter_count_cubit.dart';
import 'package:pikani/presentation/pages/main/pikani_language/winter_count/winter_count_navigator.dart';
import 'package:pikani/presentation/pages/main/pikani_language/vocabulary/vocabulary_cubit.dart';
import 'package:pikani/presentation/pages/main/pikani_language/vocabulary/vocabulary_navigator.dart';
import 'package:pikani/presentation/pages/main/prayer_menu/lord_prayer/lord_prayer_cubit.dart';
import 'package:pikani/presentation/pages/main/prayer_menu/lord_prayer/lord_prayer_navigator.dart';
import 'package:pikani/presentation/pages/main/prayer_menu/prayer_menu_cubit.dart';
import 'package:pikani/presentation/pages/main/prayer_menu/prayer_menu_navigator.dart';
import 'package:pikani/presentation/pages/main/sign_language/sign_language_category_detail/sign_language_category_detail_cubit.dart';
import 'package:pikani/presentation/pages/main/sign_language/sign_language_category_detail/sign_language_category_detail_navigator.dart';
import 'package:pikani/presentation/pages/main/sign_language/sign_language_cubit.dart';
import 'package:pikani/presentation/pages/main/sign_language/sign_language_info/sign_language_info_cubit.dart';
import 'package:pikani/presentation/pages/main/sign_language/sign_language_info/sign_language_info_navigator.dart';
import 'package:pikani/presentation/pages/main/sign_language/sign_language_navigator.dart';
import 'package:pikani/presentation/pages/main/sign_language/sign_language_short_phrases/sign_language_short_phrases_cubit.dart';
import 'package:pikani/presentation/pages/main/sign_language/sign_language_short_phrases/sign_language_short_phrases_navigator.dart';

import '../presentation/pages/main/pikani_language/vocabulary/vocabulary_category_details/vocabulary_category_details_cubit.dart';
import '../presentation/pages/main/pikani_language/vocabulary/vocabulary_category_details/vocabulary_category_details_navigator.dart';
import '../presentation/pages/splash/splash_cubit.dart';
import '../presentation/pages/splash/splash_navigator.dart';
import 'service_locator.dart';

/*
     ==============================================================
     THIS CLASS WITH REGISTER SCREENS CUBITS AND NAVIGATORS
      -> NAVIGATORS WILL BE USED FOR NAVIGATION TO OTHER SCREEN
      -> CUBIT WILL BE USED FOR EVENT HANDLING OR BUSINESS LOGIC
      -> BOTH ARE REGISTERED IN GET-IT TO KEEP MEMORY OPTIMIZATION AND SERVICE LOCATOR
     ==============================================================
   */

class AppCubits {
  static initialize() async {
    /// splash screen Cubit + navigator
    getIt.registerSingleton<SplashNavigator>(SplashNavigator(getIt()));
    getIt.registerSingleton<SplashCubit>(SplashCubit(navigator: getIt()));
    getIt.registerSingleton<MainMenuNavigator>(MainMenuNavigator(getIt()));
    getIt.registerSingleton<MainMenuCubit>(MainMenuCubit(navigator: getIt()));
    getIt.registerSingleton<BlackfootPrayerNavigator>(
      BlackfootPrayerNavigator(getIt()),
    );
    getIt.registerSingleton<BlackfootPrayerCubit>(
      BlackfootPrayerCubit(
        navigator: getIt(),
        snackBar: getIt(),
        audioService: getIt(),
      ),
    );
    getIt.registerSingleton<PikaniLanguageNavigator>(
      PikaniLanguageNavigator(getIt()),
    );
    getIt.registerSingleton<PikaniLanguageCubit>(
      PikaniLanguageCubit(navigator: getIt()),
    );
    getIt.registerSingleton<UnderstandingPikaniNavigator>(
      UnderstandingPikaniNavigator(getIt()),
    );
    getIt.registerSingleton<UnderstandingPikaniCubit>(
      UnderstandingPikaniCubit(navigator: getIt()),
    );
    getIt.registerSingleton<PikaniSymbolsNavigator>(
      PikaniSymbolsNavigator(getIt()),
    );
    getIt.registerSingleton<PikaniSymbolsCubit>(
      PikaniSymbolsCubit(navigator: getIt()),
    );
    getIt.registerSingleton<PiikaniClansNavigator>(
      PiikaniClansNavigator(getIt()),
    );
    getIt.registerSingleton<PiikaniClansCubit>(
      PiikaniClansCubit(navigator: getIt(), snackBar: getIt()),
    );

    getIt.registerSingleton<WinterCountNavigator>(
      WinterCountNavigator(getIt()),
    );
    getIt.registerSingleton<WinterCountCubit>(
      WinterCountCubit(navigator: getIt()),
    );

    getIt.registerSingleton<VocabularyNavigator>(VocabularyNavigator(getIt()));
    getIt.registerSingleton<VocabularyCubit>(
      VocabularyCubit(navigator: getIt(), repository: getIt()),
    );

    getIt.registerSingleton<VocabularyCategoryDetailsNavigator>(
      VocabularyCategoryDetailsNavigator(getIt()),
    );
    getIt.registerSingleton<VocabularyCategoryDetailsCubit>(
      VocabularyCategoryDetailsCubit(navigator: getIt(), repository: getIt()),
    );

    getIt.registerSingleton<SearchNavigator>(SearchNavigator(getIt()));
    getIt.registerSingleton<SearchCubit>(
      SearchCubit(navigator: getIt(), repository: getIt()),
    );
    getIt.registerSingleton<SignLanguageNavigator>(
      SignLanguageNavigator(getIt()),
    );
    getIt.registerSingleton<SignLanguageCubit>(
      SignLanguageCubit(navigator: getIt()),
    );
    getIt.registerSingleton<SignLanguageInfoNavigator>(
      SignLanguageInfoNavigator(getIt()),
    );
    getIt.registerSingleton<SignLanguageInfoCubit>(
      SignLanguageInfoCubit(navigator: getIt()),
    );
    getIt.registerSingleton<SignLanguageShortPhrasesNavigator>(
      SignLanguageShortPhrasesNavigator(getIt()),
    );
    getIt.registerSingleton<SignLanguageShortPhrasesCubit>(
      SignLanguageShortPhrasesCubit(navigator: getIt()),
    );
    getIt.registerSingleton<SignLanguageCategoryDetailNavigator>(
      SignLanguageCategoryDetailNavigator(getIt()),
    );
    getIt.registerSingleton<SignLanguageCategoryDetailCubit>(
      SignLanguageCategoryDetailCubit(navigator: getIt()),
    );
    getIt.registerSingleton<PikaniAiPhotosNavigator>(
      PikaniAiPhotosNavigator(getIt()),
    );
    getIt.registerSingleton<PikaniAiPhotosCubit>(
      PikaniAiPhotosCubit(navigator: getIt(), snackBar: getIt()),
    );
    getIt.registerSingleton<PikaniAiPhotoDetailNavigator>(
      PikaniAiPhotoDetailNavigator(getIt()),
    );
    getIt.registerSingleton<PikaniAiPhotoDetailCubit>(
      PikaniAiPhotoDetailCubit(navigator: getIt(), snackBar: getIt()),
    );
    getIt.registerSingleton<PiikaniStoriesNavigator>(
      PiikaniStoriesNavigator(getIt()),
    );
    getIt.registerSingleton<PiikaniStoriesCubit>(
      PiikaniStoriesCubit(
        navigator: getIt(),
        snackBar: getIt(),
        remoteDatabaseRepository: getIt(),
      ),
    );
    getIt.registerSingleton<PiikaniStoryDetailNavigator>(
      PiikaniStoryDetailNavigator(getIt()),
    );
    getIt.registerSingleton<PiikaniStoryDetailCubit>(
      PiikaniStoryDetailCubit(
        navigator: getIt(),
        snackBar: getIt(),
        remoteDatabaseRepository: getIt(),
        audioService: getIt(),
      ),
    );

    getIt.registerSingleton<PrayerMenuNavigator>(PrayerMenuNavigator(getIt()));
    getIt.registerSingleton<PrayerMenuCubit>(
      PrayerMenuCubit(navigator: getIt()),
    );
    getIt.registerSingleton<LordPrayerNavigator>(LordPrayerNavigator(getIt()));
    getIt.registerSingleton<LordPrayerCubit>(
      LordPrayerCubit(
        navigator: getIt(),
        audioService: getIt(),
        snackBar: getIt(),
      ),
    );
  }
}
