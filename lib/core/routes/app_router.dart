
import 'package:go_router/go_router.dart';
import 'package:pikani/presentation/pages/main/blackfoot_prayer/blackfoot_prayer_initial_params.dart';
import 'package:pikani/presentation/pages/main/blackfoot_prayer/blackfoot_prayer_page.dart';
import 'package:pikani/presentation/pages/main/main_menu/main_menu_initial_params.dart';
import 'package:pikani/presentation/pages/main/main_menu/main_menu_page.dart';
import 'package:pikani/presentation/pages/main/piikani_stories/piikani_stories_initial_params.dart';
import 'package:pikani/presentation/pages/main/piikani_stories/piikani_stories_page.dart';
import 'package:pikani/presentation/pages/main/piikani_stories/piikani_story_detail/piikani_story_detail_initial_params.dart';
import 'package:pikani/presentation/pages/main/piikani_stories/piikani_story_detail/piikani_story_detail_page.dart';
import 'package:pikani/presentation/pages/main/pikani_ai_photos/pikani_ai_photo_detail/pikani_ai_photo_detail_initial_params.dart';
import 'package:pikani/presentation/pages/main/pikani_ai_photos/pikani_ai_photo_detail/pikani_ai_photo_detail_page.dart';
import 'package:pikani/presentation/pages/main/pikani_ai_photos/pikani_ai_photos_initial_params.dart';
import 'package:pikani/presentation/pages/main/pikani_ai_photos/pikani_ai_photos_page.dart';
import 'package:pikani/presentation/pages/main/pikani_language/piikani_clans/piikani_clans_initial_params.dart';
import 'package:pikani/presentation/pages/main/pikani_language/piikani_clans/piikani_clans_page.dart';
import 'package:pikani/presentation/pages/main/pikani_language/pikani_language_initial_params.dart';
import 'package:pikani/presentation/pages/main/pikani_language/pikani_language_page.dart';
import 'package:pikani/presentation/pages/main/pikani_language/pikani_symbols/pikani_symbols_initial_params.dart';
import 'package:pikani/presentation/pages/main/pikani_language/pikani_symbols/pikani_symbols_page.dart';
import 'package:pikani/presentation/pages/main/pikani_language/search/search_initial_params.dart';
import 'package:pikani/presentation/pages/main/pikani_language/search/search_page.dart';
import 'package:pikani/presentation/pages/main/pikani_language/understanding_pikani/understanding_pikani_initial_params.dart';
import 'package:pikani/presentation/pages/main/pikani_language/understanding_pikani/understanding_pikani_page.dart';
import 'package:pikani/presentation/pages/main/pikani_language/winter_count/winter_count_initial_params.dart';
import 'package:pikani/presentation/pages/main/pikani_language/winter_count/winter_count_page.dart';
import 'package:pikani/presentation/pages/main/pikani_language/vocabulary/vocabulary_initial_params.dart';
import 'package:pikani/presentation/pages/main/pikani_language/vocabulary/vocabulary_page.dart';
import 'package:pikani/presentation/pages/main/prayer_menu/lord_prayer/lord_prayer_initial_params.dart';
import 'package:pikani/presentation/pages/main/prayer_menu/lord_prayer/lord_prayer_page.dart';
import 'package:pikani/presentation/pages/main/prayer_menu/prayer_menu_initial_params.dart';
import 'package:pikani/presentation/pages/main/prayer_menu/prayer_menu_page.dart';
import 'package:pikani/presentation/pages/main/sign_language/sign_language_category_detail/sign_language_category_detail_initial_params.dart';
import 'package:pikani/presentation/pages/main/sign_language/sign_language_category_detail/sign_language_category_detail_page.dart';
import 'package:pikani/presentation/pages/main/sign_language/sign_language_info/sign_language_info_initial_params.dart';
import 'package:pikani/presentation/pages/main/sign_language/sign_language_info/sign_language_info_page.dart';
import 'package:pikani/presentation/pages/main/sign_language/sign_language_initial_params.dart';
import 'package:pikani/presentation/pages/main/sign_language/sign_language_page.dart';
import 'package:pikani/presentation/pages/main/sign_language/sign_language_short_phrases/sign_language_short_phrases_initial_params.dart';
import 'package:pikani/presentation/pages/main/sign_language/sign_language_short_phrases/sign_language_short_phrases_page.dart';
import 'package:url_strategy/url_strategy.dart';
import '../../presentation/pages/main/pikani_language/vocabulary/vocabulary_category_details/vocabulary_category_details_initial_params.dart';
import '../../presentation/pages/main/pikani_language/vocabulary/vocabulary_category_details/vocabulary_category_details_page.dart';
import '../../presentation/pages/splash/splash_initial_params.dart';
import '../../presentation/pages/splash/splash_page.dart';
import '../../service_locator/service_locator.dart';
import '../navigation/app_navigator.dart';

class AppRouter {
  static initialize() {
    setPathUrlStrategy();
    GoRouter.optionURLReflectsImperativeAPIs = true;
  }

  static final router = GoRouter(
    navigatorKey: AppNavigator.navigatorKey,
    initialLocation: SplashPage.path,
    routes: [
      GoRoute(
        path: SplashPage.path,
        builder: (context, state) {
          return SplashPage(
            cubit: getIt(),
            initialParams: SplashInitialParams.fromMap(
              state.uri.queryParameters,
            ),
          );
        },
      ),
      GoRoute(
        path: MainMenuPage.path,
        builder: (context, state) {
          return MainMenuPage(
            cubit: getIt(),
            initialParams: MainMenuInitialParams.fromMap(
              state.uri.queryParameters,
            ),
          );
        },
      ),
      GoRoute(
        path: BlackfootPrayerPage.path,
        builder: (context, state) {
          return BlackfootPrayerPage(
            cubit: getIt(),
            initialParams: BlackfootPrayerInitialParams.fromMap(
              state.uri.queryParameters,
            ),
          );
        },
      ),
      GoRoute(
        path: PikaniLanguagePage.path,
        builder: (context, state) {
          return PikaniLanguagePage(
            cubit: getIt(),
            initialParams: PikaniLanguageInitialParams.fromMap(
              state.uri.queryParameters,
            ),
          );
        },
      ),
      GoRoute(
        path: UnderstandingPikaniPage.path,
        builder: (context, state) {
          return UnderstandingPikaniPage(
            cubit: getIt(),
            initialParams: UnderstandingPikaniInitialParams.fromMap(
              state.uri.queryParameters,
            ),
          );
        },
      ),
      GoRoute(
        path: PikaniSymbolsPage.path,
        builder: (context, state) {
          return PikaniSymbolsPage(
            cubit: getIt(),
            initialParams: PikaniSymbolsInitialParams.fromMap(
              state.uri.queryParameters,
            ),
          );
        },
      ),

      GoRoute(
        path: PiikaniClansPage.path,
        builder: (context, state) {
          return PiikaniClansPage(
            cubit: getIt(),
            initialParams: PiikaniClansInitialParams.fromMap(
              state.uri.queryParameters,
            ),
          );
        },
      ),

      GoRoute(
        path: WinterCountPage.path,
        builder: (context, state) {
          return WinterCountPage(
            cubit: getIt(),
            initialParams: WinterCountInitialParams.fromMap(
              state.uri.queryParameters,
            ),
          );
        },
      ),

      GoRoute(
        path: VocabularyPage.path,
        builder: (context, state) {
          return VocabularyPage(
            cubit: getIt(),
            initialParams: VocabularyInitialParams.fromMap(
              state.uri.queryParameters,
            ),
          );
        },
      ),
      GoRoute(
        path: VocabularyCategoryDetailsPage.path,
        builder: (context, state) {
          return VocabularyCategoryDetailsPage(
            cubit: getIt(),
            initialParams: VocabularyCategoryDetailsInitialParams.fromMap(
              state.uri.queryParameters,
            ),
          );
        },
      ),

      GoRoute(
        path: SearchPage.path,
        builder: (context, state) {
          return SearchPage(
            cubit: getIt(),
            initialParams: SearchInitialParams.fromMap(
              state.uri.queryParameters,
            ),
          );
        },
      ),

      GoRoute(
        path: SignLanguagePage.path,
        builder: (context, state) {
          return SignLanguagePage(
            cubit: getIt(),
            initialParams: SignLanguageInitialParams.fromMap(
              state.uri.queryParameters,
            ),
          );
        },
      ),
      GoRoute(
        path: SignLanguageInfoPage.path,
        builder: (context, state) {
          return SignLanguageInfoPage(
            cubit: getIt(),
            initialParams: SignLanguageInfoInitialParams.fromMap(
              state.uri.queryParameters,
            ),
          );
        },
      ),
      GoRoute(
        path: SignLanguageShortPhrasesPage.path,
        builder: (context, state) {
          return SignLanguageShortPhrasesPage(
            cubit: getIt(),
            initialParams: SignLanguageShortPhrasesInitialParams.fromMap(
              state.uri.queryParameters,
            ),
          );
        },
      ),

      GoRoute(
        path: SignLanguageCategoryDetailPage.path,
        builder: (context, state) {
          return SignLanguageCategoryDetailPage(
            cubit: getIt(),
            initialParams: SignLanguageCategoryDetailInitialParams.fromMap(
              state.uri.queryParameters,
            ),
          );
        },
      ),
      GoRoute(
        path: PikaniAiPhotosPage.path,
        builder: (context, state) {
          return PikaniAiPhotosPage(
            cubit: getIt(),
            initialParams: PikaniAiPhotosInitialParams.fromMap(
              state.uri.queryParameters,
            ),
          );
        },
      ),
      GoRoute(
        path: PikaniAiPhotoDetailPage.path,
        builder: (context, state) {
          return PikaniAiPhotoDetailPage(
            cubit: getIt(),
            initialParams: PikaniAiPhotoDetailInitialParams.fromMap(
              state.uri.queryParameters,
            ),
          );
        },
      ),
      GoRoute(
        path: PiikaniStoriesPage.path,
        builder: (context, state) {
          return PiikaniStoriesPage(
            cubit: getIt(),
            initialParams: PiikaniStoriesInitialParams.fromMap(
              state.uri.queryParameters,
            ),
          );
        },
      ),
      GoRoute(
        path: PiikaniStoryDetailPage.path,
        builder: (context, state) {
          return PiikaniStoryDetailPage(
            cubit: getIt(),
            initialParams: PiikaniStoryDetailInitialParams.fromMap(
              state.uri.queryParameters,
            ),
          );
        },
      ),

      GoRoute(
        path: PrayerMenuPage.path,
        builder: (context, state) {
          return PrayerMenuPage(
            cubit: getIt(),
            initialParams: PrayerMenuInitialParams.fromMap(
              state.uri.queryParameters,
            ),
          );
        },
      ),

      GoRoute(
        path: LordPrayerPage.path,
        builder: (context, state) {
          return LordPrayerPage(
            cubit: getIt(),
            initialParams: LordPrayerInitialParams.fromMap(
              state.uri.queryParameters,
            ),
          );
        },
      ),
    ],
  );
}
