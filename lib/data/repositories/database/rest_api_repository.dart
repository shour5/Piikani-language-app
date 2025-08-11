import 'dart:convert';
import 'dart:ui';

import 'package:flutter/services.dart';
import 'package:pikani/data/models/naapi_story_json.dart';
import 'package:pikani/domain/entities/naapi_story.dart';
import 'package:pikani/domain/entities/vocabulry_category.dart';

import '../../../domain/repositories/database/remote_database_repository.dart';

class RestApiRepository implements RemoteDatabaseRepository {
  @override
  Future<void> login({required String email, required password}) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<List<VocabularyCategory>> fetchCategories() async {
    return [
      VocabularyCategory(
        title: "Actions",
        phonics: "Aanisttotsihp'opistsi",
        translation: "Aanisttotsihp'opistsi",
        imageUrl: "assets/vcabassets/Actions/Actions_Btn.png",
        isNew: true,
        actionList: [
          VocabularyItem(
            english: 'Sneeze',
            phonics: 'AA-SEE-YET',
            translation: 'A’siiyit',
            assetPath: 'vcabassets/Actions/Actions/Action1.wav',
          ),
          VocabularyItem(
            english: 'Yawn',
            phonics: 'OO-PAAS-SOO',
            translation: 'Opassoo',
            assetPath: 'vcabassets/Actions/Actions/Action 2.wav',
          ),
          VocabularyItem(
            english: 'Hum (whistle)',
            phonics: 'AXE-SEK-SEE-MOOH-KEE',
            translation: 'Aiksiksiimohki',
            assetPath: 'vcabassets/Actions/Actions/Action 3.wav',
          ),
          VocabularyItem(
            english: 'Sing',
            phonics: 'EEN-NEH-KEE',
            translation: 'Inihki',
            assetPath: 'vcabassets/Actions/Actions/Action 4.wav',
          ),
          VocabularyItem(
            english: 'Stick tongue out',
            phonics: 'SAY-TSEE-NEE-YAA-KEE',
            translation: 'Saitsiniyakii',
            assetPath: 'vcabassets/Actions/Actions/Action 5.wav',
          ),
          VocabularyItem(
            english: 'Sniff',
            phonics: 'AAES-SIM-MEH-KAA',
            translation: 'Aissimihkaa',
            assetPath: 'vcabassets/Actions/Actions/Action 6.wav',
          ),
          VocabularyItem(
            english: 'Snore',
            phonics: 'E-PAKS-SAY-TAA-MEEH-TSEE',
            translation: 'Ipakssaitamiihtsi',
            assetPath: 'vcabassets/Actions/Actions/Action 7.wav',
          ),
          VocabularyItem(
            english: 'Kiss',
            phonics: 'SO-NOOS-SKEEP-BISS',
            translation: 'Sonai’sskipisa',
            assetPath: 'vcabassets/Actions/Actions/Action 8.wav',
          ),
          VocabularyItem(
            english: 'Laugh (chuckle)',
            phonics: 'EK-KAAH-SEE-TA-KEY',
            translation: 'Aikkahsi’taki',
            assetPath: 'vcabassets/Actions/Actions/Action 9.wav',
          ),
          VocabularyItem(
            english: 'Laugh',
            phonics: 'EE-YEM-MEE',
            translation: 'Iyimmi',
            assetPath: 'vcabassets/Actions/Actions/Action 10.wav',
          ),
          VocabularyItem(
            english: 'Cough',
            phonics: 'SAESS-GEN-NAA',
            translation: 'Saisskina',
            assetPath: 'vcabassets/Actions/Actions/Action 11.wav',
          ),
          VocabularyItem(
            english: 'Hiccup',
            phonics: 'OOH-BUY-SSKSEE-TOO-NEE-SEE',
            translation: 'Ohpai’sksiitoniisi',
            assetPath: 'vcabassets/Actions/Actions/Action 12.wav',
          ),
          VocabularyItem(
            english: 'Utter sound',
            phonics: 'OOH-GO-MEE',
            translation: 'Ohkomi',
            assetPath: 'vcabassets/Actions/Actions/Action 13.wav',
          ),
          VocabularyItem(
            english: 'Tap feet',
            phonics: 'AA-PEE-KSEE-KAA-SEE',
            translation: 'Aapiiksikasii',
            assetPath: 'vcabassets/Actions/Actions/Action 14.wav',
          ),
          VocabularyItem(
            english: 'Shout/yell',
            phonics: 'AYE-PAA-BES-SAA',
            translation: 'Aipapisa',
            assetPath: 'vcabassets/Actions/Actions/Action 15.wav',
          ),
          VocabularyItem(
            english: 'Snap fingers',
            phonics: 'AYE-BUCK-KOOH-DUM OO-GET-TSEEKS',
            translation: 'Aipakohtomo okitsiiksi',
            assetPath: 'vcabassets/Actions/Actions/Action 16.wav',
          ),
          VocabularyItem(
            english: 'Hand clapping',
            phonics: 'EE-TSEE-KENS-TSOOH-SEE',
            translation: 'I’tsikinsstsoohsi',
            assetPath: 'vcabassets/Actions/Actions/Action 17.wav',
          ),
        ],
      ),
      VocabularyCategory(
        title: "Piikani Names",
        phonics: "BEE-GUN-KNEE EN-EH-GAA-SIM-MEESTS",
        translation: "Piikani Inihka’simistsi",
        imageUrl: "assets/vcabassets/PiikaniNames/Piikani_Names_Btn.png",
        isNew: false,
        actionList: [
          VocabularyItem(
            english: 'Long Hair',
            phonics: 'AA-TSEE-MAYH-GEE-NEE',
            translation: 'Atsimaiihkini',
            assetPath:
                'vcabassets/PiikaniNames/PiikaniNames/Piikani names 1.wav',
          ),
          VocabularyItem(
            english: 'Sparks in a fire',
            phonics: 'MIA-NIST-SEE-GAN-A-SOY-EE',
            translation: 'Mia’nistsikana’ssoyi',
            assetPath:
                'vcabassets/PiikaniNames/PiikaniNames/Piikani names 2.wav',
          ),
          VocabularyItem(
            english: 'Flower Beaver Woman',
            phonics: 'AA-BESS-TSES-KITS-SIKS-STA-KYA-KEE',
            translation: 'Aapistsisskitsikstakiaakii',
            assetPath:
                'vcabassets/PiikaniNames/PiikaniNames/Piikani names 3.wav',
          ),
          VocabularyItem(
            english: 'Grey Rider',
            phonics: 'EK-KEE-TSEE-MYOH-KET-DOO-BEE',
            translation: 'Aikitsíímióóhkitópiiwa',
            assetPath:
                'vcabassets/PiikaniNames/PiikaniNames/Piikani names 4.wav',
          ),
          VocabularyItem(
            english: 'Long-Time Mink Woman',
            phonics: 'MEE-SUM-MISS-SO-YEE-GUY-YAA-GEE',
            translation: 'Misamisoyíí’kayaakííwa',
            assetPath:
                'vcabassets/PiikaniNames/PiikaniNames/Piikani names 5.wav',
          ),
          VocabularyItem(
            english: 'Curly Hair Woman',
            phonics: 'EM-MOO-YEEH-GEN-AA-GEE',
            translation: 'Immoyihkinaakííwa',
            assetPath:
                'vcabassets/PiikaniNames/PiikaniNames/Piikani names 6.wav',
          ),
          VocabularyItem(
            english: 'Yellow Flower Woman',
            phonics: 'OTAH-GAA-BESS-TSES-GIT-TSAA-GEE',
            translation: 'Otohkapistsisskitsaakii',
            assetPath:
                'vcabassets/PiikaniNames/PiikaniNames/Piikani names 7.wav',
          ),
          VocabularyItem(
            english: 'Medicine Woman',
            phonics: 'SAA-AM-MYAA-GEE',
            translation: 'Saaamiakii',
            assetPath:
                'vcabassets/PiikaniNames/PiikaniNames/Piikani names 8.wav',
          ),
          VocabularyItem(
            english: 'Girly',
            phonics: 'AA-GEE-GOO-WAY-MEE',
            translation: 'Akiikowaimii',
            assetPath:
                'vcabassets/PiikaniNames/PiikaniNames/Piikani names 9.wav',
          ),
          VocabularyItem(
            english: 'Fasting in the west',
            phonics: 'NEM-MYOO-TSEEMS-STAAN',
            translation: 'Nimmiootsiimsstaan',
            assetPath:
                'vcabassets/PiikaniNames/PiikaniNames/Piikani names 10.wav',
          ),
          VocabularyItem(
            english: 'Lone Woman',
            phonics: 'NEE-TSET-DAA-GEE',
            translation: 'Ni’tsitaakii',
            assetPath:
                'vcabassets/PiikaniNames/PiikaniNames/Piikani names 11.wav',
          ),
          VocabularyItem(
            english: 'Fair Lady',
            phonics: 'AA-BOO-YAA-GEE',
            translation: 'Aapoyaakii',
            assetPath:
                'vcabassets/PiikaniNames/PiikaniNames/Piikani names 12.wav',
          ),
          VocabularyItem(
            english: 'First Chief',
            phonics: 'EE-DOO-MEE-NAA',
            translation: 'I’toominaa',
            assetPath:
                'vcabassets/PiikaniNames/PiikaniNames/Piikani names 13.wav',
          ),
          VocabularyItem(
            english: 'Sings in front',
            phonics: 'EE-TSOH-GAA-NIH-KEE',
            translation: 'I’tsoohkainihki',
            assetPath:
                'vcabassets/PiikaniNames/PiikaniNames/Piikani names 14.wav',
          ),
          VocabularyItem(
            english: 'Running Wolf',
            phonics: 'AA-BEE-SOO-MAAH-GAAN',
            translation: 'Aapi’somaahkaan',
            assetPath:
                'vcabassets/PiikaniNames/PiikaniNames/Piikani names 15.wav',
          ),
        ],
      ),

      VocabularyCategory(
        title: "Piikani Values",
        phonics: "Piikani sstahpiki'tsi'pistsi",
        translation: "Piikani sstahpiki'tsi'pistsi",
        imageUrl: "assets/vcabassets/PiikaniValues/Values_Btn.png",
        isNew: false,
        actionList: [
          VocabularyItem(
            english: 'Prayer',
            phonics: 'AA-TSEE-MOY-EEH-GAAN',
            translation: 'Aatsimoyihkaani',
            assetPath:
                'vcabassets/PiikaniValues/PiikaniValues/Piikani Values 1.wav',
          ),
          VocabularyItem(
            english: 'Be spiritual',
            phonics: 'AA-WAA-TO-YEE-DAA-KYOOP',
            translation: 'Awaatoyi’takio’pa',
            assetPath:
                'vcabassets/PiikaniValues/PiikaniValues/Piikani Values 2.wav',
          ),
          VocabularyItem(
            english: 'Be thankful',
            phonics: 'A-KSEE-MA-TSEE-DAA-KYOOP',
            translation: 'Aiksimatsi’takio’pa',
            assetPath:
                'vcabassets/PiikaniValues/PiikaniValues/Piikani Values 3.wav',
          ),
          VocabularyItem(
            english: 'Believe',
            phonics: 'OO-MAY-TUCK-SEN-KNEE',
            translation: 'Omai’takssini',
            assetPath:
                'vcabassets/PiikaniValues/PiikaniValues/Piikani Values 4.wav',
          ),
          VocabularyItem(
            english: 'Be helpful',
            phonics: 'ISS-BOOM-MO-TSEE-SIN',
            translation: 'Isspommotsiiyssini',
            assetPath:
                'vcabassets/PiikaniValues/PiikaniValues/Piikani Values 5.wav',
          ),
          VocabularyItem(
            english: 'Be kind',
            phonics: 'GIM-MAA-BEE-YEE-BIT-SEN-KNEE',
            translation: 'Kimmapiiyipitssini',
            assetPath:
                'vcabassets/PiikaniValues/PiikaniValues/Piikani Values 6.wav',
          ),
          VocabularyItem(
            english: 'Gain wisdom',
            phonics: 'MO-GAA-GISS-SIN-KNEE',
            translation: 'Mokakissini',
            assetPath:
                'vcabassets/PiikaniValues/PiikaniValues/Piikani Values 7.wav',
          ),
          VocabularyItem(
            english: 'Always try hard',
            phonics: 'EE-YIK-GA-KEY-MAAH-SIN-KNEE',
            translation: 'Iiyika’kimaahsini',
            assetPath:
                'vcabassets/PiikaniValues/PiikaniValues/Piikani Values 8.wav',
          ),
          VocabularyItem(
            english: 'Be generous',
            phonics: 'AAH-SIT-DAA-BEE-SIN-KNEE',
            translation: 'Aahsitapiissini',
            assetPath:
                'vcabassets/PiikaniValues/PiikaniValues/Piikani Values 9.wav',
          ),
          VocabularyItem(
            english: 'Cherish',
            phonics: 'SAA-KA-KIM-MOO-TSEE-SIN',
            translation: 'Sakakimmotsiiyssini',
            assetPath:
                'vcabassets/PiikaniValues/PiikaniValues/Piikani Values 10.wav',
          ),
          VocabularyItem(
            english: 'Awareness',
            phonics: 'AWE-GAA-GUE-SOUP',
            translation: 'Aokakio’so’pi',
            assetPath:
                'vcabassets/PiikaniValues/PiikaniValues/Piikani Values 11.wav',
          ),
          VocabularyItem(
            english: 'Ambitious',
            phonics: 'A-WOO-GAAP-SIN',
            translation: 'Aawooka’pssini',
            assetPath:
                'vcabassets/PiikaniValues/PiikaniValues/Piikani Values 12.wav',
          ),
          VocabularyItem(
            english: 'Harmony',
            phonics: 'SAA-BAA-TSEM-MAA-BEE',
            translation: 'Sapa’tsima’pii',
            assetPath:
                'vcabassets/PiikaniValues/PiikaniValues/Piikani Values 13.wav',
          ),
          VocabularyItem(
            english: 'Fear / be afraid',
            phonics: 'EE-GOO-POOH-SIN-KNEE',
            translation: 'Iiko’pohsini',
            assetPath:
                'vcabassets/PiikaniValues/PiikaniValues/Piikani Values 14.wav',
          ),
          VocabularyItem(
            english: 'Relationship',
            phonics: 'KNEE-DAA-KSO-GOO-WAM-MOO-TSEE-YOPA',
            translation: 'Nitaikso’kowammotsiiyo’pa',
            assetPath:
                'vcabassets/PiikaniValues/PiikaniValues/Piikani Values 15.wav',
          ),
        ],
      ),
      VocabularyCategory(
        title: "BF Areas",
        phonics: "Siksikawahsini",
        translation: "Siksikawahsini",
        imageUrl:
            "assets/vcabassets/BlackfootNamesofArea/BF_Names_Area_Btn.png",
        isNew: false,
        actionList: [
          VocabularyItem(
            english: 'Livingstone Range',
            phonics: 'BUN-KNEE-KAH-TAA-YEE-STUCK-KEESTS',
            translation: 'Pani’kahtayiistakistsi',
            assetPath:
                'vcabassets/BlackfootNamesofArea/BlackfootNamesofArea/BF places 1.wav',
          ),
          VocabularyItem(
            english: 'Castle River Area',
            phonics: 'EE-DECK-GIT-STAA-KYOPE',
            translation: 'Iitaikitsstakio’pa',
            assetPath:
                'vcabassets/BlackfootNamesofArea/BlackfootNamesofArea/BF places 2.wav',
          ),
          VocabularyItem(
            english: 'Crowsnest Mountain (Crow Home)',
            phonics: 'MY-STOO-GOO-WAN',
            translation: 'Mai’stookoowani',
            assetPath:
                'vcabassets/BlackfootNamesofArea/BlackfootNamesofArea/BF places 3.wav',
          ),
          VocabularyItem(
            english: 'Castle River',
            phonics: 'AA-SAAN',
            translation: 'A’saani',
            assetPath:
                'vcabassets/BlackfootNamesofArea/BlackfootNamesofArea/BF places 4.wav',
          ),
          VocabularyItem(
            english: 'Porcupine Hills',
            phonics: 'GAYSS-SKAAHP-SSOO-YISS',
            translation: 'Kaaysskaahpssoyis',
            assetPath:
                'vcabassets/BlackfootNamesofArea/BlackfootNamesofArea/BF places 5.wav',
          ),
          VocabularyItem(
            english: 'Sweetgrass Hills',
            phonics: 'GAA-TOO-YIS-SIKS',
            translation: 'Katoyissiksi',
            assetPath:
                'vcabassets/BlackfootNamesofArea/BlackfootNamesofArea/BF places 6.wav',
          ),
          VocabularyItem(
            english: 'Head-Smashed-In Buffalo Jump',
            phonics: 'EE-TSEE-BAK-KSEK-GENEH-GOO-TSEE-YOOP',
            translation: 'Iitsiipaksikkinihkootsiyo’pa',
            assetPath:
                'vcabassets/BlackfootNamesofArea/BlackfootNamesofArea/BF places 7.wav',
          ),
          VocabularyItem(
            english: 'Writing-On-Stone',
            phonics: 'AA-SIN-NAPE',
            translation: 'Aisinai’pi',
            assetPath:
                'vcabassets/BlackfootNamesofArea/BlackfootNamesofArea/BF places 8.wav',
          ),
          VocabularyItem(
            english: 'Chief Mountain',
            phonics: 'NE-NA-STAA-GOO',
            translation: 'Ninaiistako',
            assetPath:
                'vcabassets/BlackfootNamesofArea/BlackfootNamesofArea/BF places 9.wav',
          ),
          VocabularyItem(
            english: 'Crow Lodge',
            phonics: 'EE-DAA-WAIST-DOY-KO-GOPE',
            translation: 'Iitawai’stoikoko’pa',
            assetPath:
                'vcabassets/BlackfootNamesofArea/BlackfootNamesofArea/BF places 10.wav',
          ),
        ],
      ),
      VocabularyCategory(
        title: "Chores",
        phonics: "KNEE-DAA-BOW-DAA-GUE-BEE",
        translation: "Niita’po’takiyo’pi",
        imageUrl: "assets/vcabassets/Chores/Chores_Btn.png",
        isNew: true,
        actionList: [
          VocabularyItem(
            english: 'You need to do your chores',
            phonics: 'GEE-DAA-KAA-BOO-TUCK-KEY',
            translation: 'Kitaaka’po’taki',
            assetPath: 'vcabassets/Chores/Chores/Chores 1.wav',
          ),
          VocabularyItem(
            english: 'Wash the dishes',
            phonics: 'ISS-SAA-KIT GOO-SEE',
            translation: 'Issakit ko’si',
            assetPath: 'vcabassets/Chores/Chores/Chores 2.wav',
          ),
          VocabularyItem(
            english: 'Throw away the trash',
            phonics: 'MEE-STAA-PAA-PEE-KSET NEE-MYAA-BEESTS',
            translation: 'Miistapapiksit nimia’piistsi',
            assetPath: 'vcabassets/Chores/Chores/Chores 3.wav',
          ),
          VocabularyItem(
            english: 'Wash your laundry',
            phonics: 'SEESS-SSTAA-GET',
            translation: 'Ssiiststakit',
            assetPath: 'vcabassets/Chores/Chores/Chores 4.wav',
          ),
          VocabularyItem(
            english: 'Sweep the floor',
            phonics: 'YAA-MAAH-GYAA-KET GAA-BOO-KSEE-NEE-MAAN',
            translation: 'Yaamaahkiaakit kaapoksiinimaani',
            assetPath: 'vcabassets/Chores/Chores/Chores 5.wav',
          ),
          VocabularyItem(
            english: 'Mop/wipe the floor',
            phonics: 'SSEE-YAAH-KEET GAA-BOO-KSEE-NEE-MAAN',
            translation: 'Ssiiyahkiit kaapoksiinimaani',
            assetPath: 'vcabassets/Chores/Chores/Chores 6.wav',
          ),
        ],
      ),

      // 6 to 9
      VocabularyCategory(
        title: "Plants",
        phonics: "ISS-TOO-TOOH-SAA-TSEESTS",
        translation: "I’nssimaanistsi",
        imageUrl: "assets/vcabassets/Plants_Medicine/Plants_Btn.png",
        isNew: true,
        actionList: [
          VocabularyItem(
            english: 'Fringed Sage',
            phonics: 'GAA-KSEE-MEES',
            translation: 'Ka’ksimiisi',
            assetPath: 'vcabassets/Plants_Medicine/Plants/Plants 1.wav',
            imageUrl:
                "assets/vcabassets/Plants_Medicine/webp/1.-Fringed_Sage_Artemis.webp",
          ),
          VocabularyItem(
            english: 'Female Fringed Sage',
            phonics: 'AA-GEE-KAA-KSEE-MEES',
            translation: 'Aakiika’ksimiisi',
            assetPath: 'vcabassets/Plants_Medicine/Plants/Plants 2.wav',
            imageUrl:
                'assets/vcabassets/Plants_Medicine/webp/2.-Female_Fringed_Sage_Artemis.webp',
          ),
          VocabularyItem(
            english: 'Sage',
            phonics: 'GAA-KSE-MO',
            translation: 'Ka’ksimoi',
            assetPath: 'vcabassets/Plants_Medicine/Plants/Plants 3.wav',
            imageUrl:
                "assets/vcabassets/Plants_Medicine/webp/3.-Prairie_Sage_Artemis.webp",
          ),
          VocabularyItem(
            english: 'Man Sage – Big Sagebrush',
            phonics: 'NI-NAA-GAA-KSE-MO',
            translation: 'Ninaika’ksimoi',
            assetPath: 'vcabassets/Plants_Medicine/Plants/Plants 4.wav',
            imageUrl:
                "assets/vcabassets/Plants_Medicine/webp/4.-Big_Sagebrush_Artemi.webp",
          ),
          VocabularyItem(
            english: 'Sweet Grass',
            phonics: 'SE-BAA-TSEM-MO',
            translation: 'Sipatsimoi',
            assetPath: 'vcabassets/Plants_Medicine/Plants/Plants 6.wav',
            imageUrl:
                "assets/vcabassets/Plants_Medicine/webp/6.-Sweetgrass.webp",
          ),
          VocabularyItem(
            english: 'Tobacco',
            phonics: 'BESS-DAAH-GUN',
            translation: 'Pisstaahkaani',
            assetPath: 'vcabassets/Plants_Medicine/Plants/Plants 7.wav',
            imageUrl: "assets/vcabassets/Plants_Medicine/webp/7.-Tobacco.webp",
          ),
          VocabularyItem(
            english: 'Chokecherries',
            phonics: 'BUCK-GEE-BISTS',
            translation: 'Pakkii’pistsi',
            assetPath: 'vcabassets/Plants_Medicine/Plants/Plants 8.wav',
            imageUrl:
                "assets/vcabassets/Plants_Medicine/webp/8.-Chokecherries.webp",
          ),
          VocabularyItem(
            english: 'Saskatoon Berries',
            phonics: 'OO-GOO-NOO-KEESTS',
            translation: 'Okonokistsi',
            assetPath: 'vcabassets/Plants_Medicine/Plants/Plants 9.wav',
            imageUrl:
                "assets/vcabassets/Plants_Medicine/webp/9.-Saskatoon_Berries.webp",
          ),
          VocabularyItem(
            english: 'Bear Berries / Kinnikinnick',
            phonics: 'GAA-KAH-SEE-NISTS',
            translation: 'Kakahsiinistsi',
            assetPath: 'vcabassets/Plants_Medicine/Plants/Plants 10.wav',
            imageUrl:
                "assets/vcabassets/Plants_Medicine/webp/10.-Bearberries_Kinnikinnick.webp",
          ),
          VocabularyItem(
            english: 'Bull-berries',
            phonics: 'MEEK-SIN-NET-TSEE-MESTS',
            translation: 'Mi’ksinittsiimistsi',
            assetPath: 'vcabassets/Plants_Medicine/Plants/Plants 11.wav',
            imageUrl:
                "assets/vcabassets/Plants_Medicine/webp/11.-Bull-berries.webp",
          ),
          VocabularyItem(
            english: 'Willow',
            phonics: 'OO-TSEE-BEESS',
            translation: 'Otsipiiisi',
            assetPath: 'vcabassets/Plants_Medicine/Plants/Plants 12.wav',
            imageUrl:
                "assets/vcabassets/Plants_Medicine/webp/12.-Willow_Salix_spec.webp",
          ),
          VocabularyItem(
            english: 'Red Willow',
            phonics: 'MEE-KOO-TSEE-BEESS',
            translation: 'Mi’kotsipiiyisi',
            assetPath: 'vcabassets/Plants_Medicine/Plants/Plants 13.wav',
            imageUrl:
                "assets/vcabassets/Plants_Medicine/webp/13.-Red_Willow_Cornus.webp",
          ),
          VocabularyItem(
            english: 'Rabbit Willow / Brush',
            phonics: 'AAAT-TSES-DOE-TSEE-BEESS',
            translation: 'Aaattsistaotsipiiisi',
            assetPath: 'vcabassets/Plants_Medicine/Plants/Plants 14.wav',
            imageUrl:
                "assets/vcabassets/Plants_Medicine/webp/14.-Rabbit_Brush_Chry.webp",
          ),
          VocabularyItem(
            english: 'Diamond Willow',
            phonics: 'BEE-SUT-DO-TSE-BEESS',
            translation: 'Piisatotsipiiyisi',
            assetPath: 'vcabassets/Plants_Medicine/Plants/Plants 15.wav',
            imageUrl:
                "assets/vcabassets/Plants_Medicine/webp/15.-Diamond_Willow_br.webp",
          ),
          VocabularyItem(
            english: 'Mint',
            phonics: 'GAA-KET-TSEM-MOE',
            translation: 'Ka’kitsimoi',
            assetPath: 'vcabassets/Plants_Medicine/Plants/Plants 16.wav',
            imageUrl:
                "assets/vcabassets/Plants_Medicine/webp/16.-wild_mint.webp",
          ),
          VocabularyItem(
            english: 'Sweet Pine',
            phonics: 'GAA-DOY-YESS',
            translation: 'Katoyissi',
            assetPath: 'vcabassets/Plants_Medicine/Plants/Plants 17.wav',
            imageUrl:
                "assets/vcabassets/Plants_Medicine/webp/17.-Sweet_Pine.webp",
          ),
        ],
      ),
      VocabularyCategory(
        title: "Clothes",
        phonics: "ISS-TOO-TOOH-SAA-TSEESTS",
        translation: " Istotoohsa’tsiistsi",
        imageUrl: "assets/vcabassets/Clothes_Jewellery/Clothes_Btn.png",
        isNew: true,
        actionList: [
          VocabularyItem(
            english: 'Finger Rings',
            phonics: 'EE-SA-BEE-GIT-SOOH-SA-TSEEKS',
            translation: 'Isapiikitsoohsa’tsiiksi',
            assetPath: 'vcabassets/Clothes_Jewellery/Clothes/Clothes 1.wav',
          ),
          VocabularyItem(
            english: 'Necklace',
            phonics: 'OOH-GEN',
            translation: 'Ohkinni',
            assetPath: 'vcabassets/Clothes_Jewellery/Clothes/Clothes 2.wav',
          ),
          VocabularyItem(
            english: 'Bracelet',
            phonics: 'BOONN',
            translation: 'Ponni',
            assetPath: 'vcabassets/Clothes_Jewellery/Clothes/Clothes 3.wav',
          ),
          VocabularyItem(
            english: 'Earrings',
            phonics: 'OOH-DOO-KEE-BEEKS',
            translation: 'Ohtookipiiksi',
            assetPath: 'vcabassets/Clothes_Jewellery/Clothes/Clothes 4.wav',
          ),
          VocabularyItem(
            english: 'Eyeglasses',
            phonics: 'AA-WAAPPSS-BEE-NOO-SAA-TSEESTS',
            translation: 'Aawapsspiinao’sa’tsiistsi',
            assetPath: 'vcabassets/Clothes_Jewellery/Clothes/Clothes 5.wav',
          ),
          VocabularyItem(
            english: 'Blanket',
            phonics: 'SEE-GAAN',
            translation: 'Si’kaana',
            assetPath: 'vcabassets/Clothes_Jewellery/Clothes/Clothes 6.wav',
          ),
          VocabularyItem(
            english: 'Pillow',
            phonics: 'GESS-GAA-TSES',
            translation: 'Kisskaa’tsisi',
            assetPath: 'vcabassets/Clothes_Jewellery/Clothes/Clothes 7.wav',
          ),
          VocabularyItem(
            english: 'Clothes',
            phonics: 'IS TOO TOH SEE TSEE',
            translation: 'Istotoohsiistsi',
            assetPath:
                'vcabassets/Clothes_Jewellery/Audio 8-28/ELC_Clothes_227.wav',
          ),
          VocabularyItem(
            english: 'My clothes',
            phonics: 'KNEES STO TOOH SEE TSEE',
            translation: 'Nitsstotoohsiistsi',
            assetPath:
                'vcabassets/Clothes_Jewellery/Audio 8-28/ELC_Clothes_228.wav',
          ),
          VocabularyItem(
            english: 'Your clothes',
            phonics: 'KEY STO TOOH SEE TSEE',
            translation: 'Kitsstotoohsiistsi',
            assetPath:
                'vcabassets/Clothes_Jewellery/Audio 8-28/ELC_Clothes_229.wav',
          ),
          VocabularyItem(
            english: 'Cap/Hat',
            phonics: 'IS STOO MOO GAAN',
            translation: 'Isttsomo’kaan',
            assetPath:
                'vcabassets/Clothes_Jewellery/Audio 8-28/ELC_Clothes_230.wav',
          ),
          VocabularyItem(
            english: 'My cap/hat',
            phonics: 'KNIT TSO MOO GAAN',
            translation: 'Nitsomo’kann',
            assetPath:
                'vcabassets/Clothes_Jewellery/Audio 8-28/ELC_Clothes_231.wav',
          ),
          VocabularyItem(
            english: 'Your cap/hat',
            phonics: 'GOO TSO MOO GAAN',
            translation: 'Kotsomo’kaan',
            assetPath:
                'vcabassets/Clothes_Jewellery/Audio 8-28/ELC_Clothes_232.wav',
          ),
          VocabularyItem(
            english: 'Coat/Jacket',
            phonics: 'AA SOO GAA SIM',
            translation: 'Asoka’sim',
            assetPath:
                'vcabassets/Clothes_Jewellery/Audio 8-28/ELC_Clothes_233.wav',
          ),
          VocabularyItem(
            english: 'My coat/jacket',
            phonics: 'KNEE SOO GAA SIM',
            translation: 'Nisoka’simi',
            assetPath:
                'vcabassets/Clothes_Jewellery/Audio 8-28/ELC_Clothes_234.wav',
          ),
          VocabularyItem(
            english: 'Your coat/jacket',
            phonics: 'GEE SOK GAA SIM',
            translation: 'Kisoka’sim',
            assetPath:
                'vcabassets/Clothes_Jewellery/Audio 8-28/ELC_Clothes_235.wav',
          ),
          VocabularyItem(
            english: 'Pants',
            phonics: 'OOT SSKO EE TSES',
            translation: 'Otsskoiitsis',
            assetPath:
                'vcabassets/Clothes_Jewellery/Audio 8-28/ELC_Clothes_236.wav',
          ),
          VocabularyItem(
            english: 'My pants',
            phonics: 'KNEE TOT SSKO TSEKS',
            translation: 'Nitotsskoiiksi',
            assetPath:
                'vcabassets/Clothes_Jewellery/Audio 8-28/ELC_Clothes_237.wav',
          ),
          VocabularyItem(
            english: 'Your pants',
            phonics: 'KEY TOT SSKO TSEKS',
            translation: 'Kitotsskoiiksi',
            assetPath:
                'vcabassets/Clothes_Jewellery/Audio 8-28/ELC_Clothes_238.wav',
          ),
          VocabularyItem(
            english: 'Shoes',
            phonics: 'AA TSEE KEYS',
            translation: 'Atsikiniitsi',
            assetPath:
                'vcabassets/Clothes_Jewellery/Audio 8-28/ELC_Clothes_239.wav',
          ),
          VocabularyItem(
            english: 'My shoes',
            phonics: 'NAA TSEE KEY STEE',
            translation: 'Natsikiistsi',
            assetPath:
                'vcabassets/Clothes_Jewellery/Audio 8-28/ELC_Clothes_240.wav',
          ),
          VocabularyItem(
            english: 'Your shoes',
            phonics: 'GAA TSEE KEY STEE',
            translation: 'Katsikiistsi',
            assetPath:
                'vcabassets/Clothes_Jewellery/Audio 8-28/ELC_Clothes_241.wav',
          ),
          VocabularyItem(
            english: 'Socks',
            phonics: 'ATOO AH SIM MEKSE',
            translation: 'Ato’ahsimiiksi',
            assetPath:
                'vcabassets/Clothes_Jewellery/Audio 8-28/ELC_Clothes_242.wav',
          ),
          VocabularyItem(
            english: 'My socks',
            phonics: 'NOO TOO AH SIM MEKSE',
            translation: 'Nooto’ahsimiiksi',
            assetPath:
                'vcabassets/Clothes_Jewellery/Audio 8-28/ELC_Clothes_243.wav',
          ),
          VocabularyItem(
            english: 'Your socks',
            phonics: 'GOO TOO AH SIM MEKSE',
            translation: 'Kooto’ahsimiiksi',
            assetPath:
                'vcabassets/Clothes_Jewellery/Audio 8-28/ELC_Clothes_244.wav',
          ),
          VocabularyItem(
            english: 'Underwear',
            phonics: 'STAAH TSEE STO TOOH SEE TSEE',
            translation: 'Staahtsistotoohsiistsi',
            assetPath:
                'vcabassets/Clothes_Jewellery/Audio 8-28/ELC_Clothes_245.wav',
          ),
          VocabularyItem(
            english: 'My underwear',
            phonics: 'KNEES TSEE STAAH TSEE STO TOOH SEE TSEE',
            translation: 'Nitsisaahtsistotoohsiistsi',
            assetPath:
                'vcabassets/Clothes_Jewellery/Audio 8-28/ELC_Clothes_246.wav',
          ),
          VocabularyItem(
            english: 'Your underwear',
            phonics: 'KEE TSEE STAAH TSEE STO TOOH SEE TSEE',
            translation: 'Kitsisaahtsistotoohsiistsi',
            assetPath:
                'vcabassets/Clothes_Jewellery/Audio 8-28/ELC_Clothes_247.wav',
          ),
        ],
      ),

      VocabularyCategory(
        title: "Neighbors",
        phonics: "Iihkawaiksi",
        translation: "Iihkawaiksi",
        imageUrl: "assets/vcabassets/Neighbours/Neighbors_Btn.png",
        isNew: true,
        actionList: [
          VocabularyItem(
            english: 'Asian Person',
            phonics: 'AA-BAA-TAAMSS-TSEN-NEE-MAA-TA-BEE',
            translation: 'Aapataamsstsinnimaitapii',
            assetPath: 'vcabassets/Neighbours/Neighbours/Neighbours 1.wav',
          ),
          VocabularyItem(
            english: 'Black Person',
            phonics: 'SIX-SAA-BEE-GOO-ONE',
            translation: 'Siksaapiikoana',
            assetPath: 'vcabassets/Neighbours/Neighbours/Neighbours 2.wav',
          ),
          VocabularyItem(
            english: 'Hutterite',
            phonics: 'OO-DUCK-KSES-DO-YEE-GOO-ONE',
            translation: 'O’taksisstoyiikoana',
            assetPath: 'vcabassets/Neighbours/Neighbours/Neighbours 3.wav',
          ),
          VocabularyItem(
            english: 'Whiteman',
            phonics: 'NAA-BEE-GOO-ONE',
            translation: 'Naapikoana',
            assetPath: 'vcabassets/Neighbours/Neighbours/Neighbours 4.wav',
          ),
          VocabularyItem(
            english: 'German',
            phonics: 'KSE-SIST-TSOO-MO-GEE',
            translation: 'Ksisisttsomo’kii',
            assetPath: 'vcabassets/Neighbours/Neighbours/Neighbours 5.wav',
          ),
          VocabularyItem(
            english: 'French',
            phonics: 'KNEE-TSAA-BEE-GOO-ONE',
            translation: 'Niitsaapiikoana',
            assetPath: 'vcabassets/Neighbours/Neighbours/Neighbours 6.wav',
          ),
          VocabularyItem(
            english: 'Metis',
            phonics: 'SAA-YAA-BEE-GOO-ONE',
            translation: 'Saayapiikoana',
            assetPath: 'vcabassets/Neighbours/Neighbours/Neighbours 7.wav',
          ),
          VocabularyItem(
            english: 'Japanese',
            phonics: 'EE-GAK-KSAA-BEE-GOO-ONE',
            translation: 'Ikakksaapiikoana',
            assetPath: 'vcabassets/Neighbours/Neighbours/Neighbours 8.wav',
          ),
          VocabularyItem(
            english: 'English',
            phonics: 'MINI-YAA-BEE-GOO-ONE',
            translation: 'Miiniyaapikoana',
            assetPath: 'vcabassets/Neighbours/Neighbours/Neighbours 9.wav',
          ),
          VocabularyItem(
            english: 'Russian',
            phonics: 'OO-MAHK-KSEE-GAA-BEE-GOO-ONE',
            translation: 'Omahksikaapiikoana',
            assetPath: 'vcabassets/Neighbours/Neighbours/Neighbours 10.wav',
          ),
          VocabularyItem(
            english: 'Osage People',
            phonics: 'GAA-KSEE-MOY-IT-DAA-BEEKS',
            translation: 'Ka’ksimoyiitapiiksi',
            assetPath: 'vcabassets/Neighbours/Neighbours/Neighbours 11.wav',
          ),
          VocabularyItem(
            english: 'South Peigan',
            phonics: 'UMM SGAA BEE BEE GUN KNEE',
            translation: 'Aamsskaapipiikani',
            assetPath: 'vcabassets/Neighbours/Neighbours/Neighbours 12.wav',
          ),
          VocabularyItem(
            english: 'Kainaa',
            phonics: 'GAA NAAH',
            translation: 'Kainaa',
            assetPath: 'vcabassets/Neighbours/Neighbours/Neighbours 13.wav',
          ),
          VocabularyItem(
            english: 'Blackfoot',
            phonics: 'SEE KSEE GAA',
            translation: 'Siksika',
            assetPath: 'vcabassets/Neighbours/Neighbours/Neighbours 14.wav',
          ),
          VocabularyItem(
            english: 'Peigan',
            phonics: 'BEE GUN KNEE',
            translation: 'Piikani',
            assetPath: 'vcabassets/Neighbours/Neighbours/Neighbours 15.wav',
          ),
          VocabularyItem(
            english: 'Sarcee',
            phonics: 'SAAH SEE',
            translation: 'Sarcee',
            assetPath: 'vcabassets/Neighbours/Neighbours/Neighbours 16.wav',
          ),
          VocabularyItem(
            english: 'Stoney',
            phonics: 'SAAH SSEE SOO KEE TAA KEE',
            translation: 'Saahsaiisso’kitaki',
            assetPath: 'vcabassets/Neighbours/Neighbours/Neighbours 17.wav',
          ),
          VocabularyItem(
            english: 'Cree',
            phonics: 'AA SEE NAA',
            translation: 'Asinaa',
            assetPath: 'vcabassets/Neighbours/Neighbours/Neighbours 18.wav',
          ),
          VocabularyItem(
            english: 'Crow',
            phonics: 'IS SAA BO',
            translation: 'Issapo',
            assetPath: 'vcabassets/Neighbours/Neighbours/Neighbours 19.wav',
          ),
        ],
      ),
      VocabularyCategory(
        title: "Sentences",
        phonics: "Sinaakssin",
        translation: "Sinaakssin",
        imageUrl: "assets/vcabassets/Sentences/Sentences_Btn.png",
        isNew: true,
        sections: [
          VocabularySection(
            title: "Section 1",
            items: [
              VocabularyItem(
                english: 'Pick fruit – root',
                phonics: 'OYS-SEE',
                translation: 'Oy’ssi',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 1/SentencesS1_1.wav',
              ),
              VocabularyItem(
                english: 'Chokecherries',
                phonics: 'BUCK-GEE-BESTS',
                translation: 'Paakii’pistsi',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 1/SentencesS1_2.wav',
              ),
              VocabularyItem(
                english: 'I will pick chokecherries',
                phonics: 'KNEE-DUCK-OO-DOYSS BUCK-GEE-BESTS',
                translation: 'Nitaakotoy’ssi pakkii’pistsi',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 1/SentencesS1_3.wav',
              ),
              VocabularyItem(
                english: 'You will pick chokecherries',
                phonics: 'GEE-DUCK-OO-DOYSS BUCK-GEE-BESTS',
                translation: 'Kitaakotoy’ssi pakkii’pistsi',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 1/SentencesS1_4.wav',
              ),
              VocabularyItem(
                english: 'They will pick chokecherries',
                phonics: 'AA-GOYS-SEE-YAAW BUCK-GEE-BESTS',
                translation: 'Aakotoy’ssiyaawa pakkii’pistsi',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 1/SentencesS1_5.wav',
              ),
              VocabularyItem(
                english: 'We will pick chokecherries',
                phonics: 'AA-GOYS-SOUP BUCK-GEE-BESTS',
                translation: 'Aakotoy’sso’pa pakki’pistsi',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 1/SentencesS1_6.wav',
              ),
              VocabularyItem(
                english: 'Come with me to pick chokecherries.',
                phonics: 'BOO-GEE-YOOT AA-GOO-DOYS-SOUP BUCK-GEE-BESTS',
                translation: 'Po’kiiyoot aakotoy’sso’pa pakki’pistsi',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 1/SentencesS1_7.wav',
              ),
              VocabularyItem(
                english: 'Where is a good place to pick chokecherries?',
                phonics:
                    'TSE-MA NOOHK-SOO-GAA-BEW AAH-GET-DOYS-SOUP BUCK-GEE-BESTS',
                translation:
                    'Tsima, noohkssoka’piiwa aahkitoy’sso’pa pakki’pistsi?',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 1/SentencesS1_8.wav',
              ),
            ],
          ),
          VocabularySection(
            title: "Section 2",
            items: [
              VocabularyItem(
                english: 'Take something – root',
                phonics: 'OO-DUCK-GEE',
                translation: 'O’taki',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 2/SentencesS2_1.wav',
              ),
              VocabularyItem(
                english: 'Grinder/Crusher',
                phonics: 'EEH-DE-BIK-GYAA-GYOPE',
                translation: 'Iihtaipikkiaakio’pa',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 2/SentencesS2_2.wav',
              ),
              VocabularyItem(
                english: 'I will get a crusher/grinder',
                phonics: 'KNEE-DAA-GOO-DUCK-KEY EEH-DE-BIK-GYAA-GYOPE',
                translation: 'Nitaako’taki iihtaipikkiaakio’pa',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 2/SentencesS2_3.wav',
              ),
              VocabularyItem(
                english: 'You will get a crusher/grinder – command',
                phonics: 'MUTT-DOO-DAA-GIT EEH-DE-BIK-GYAA-GYOPE',
                translation: 'Mato’takit iihtaipikkiaakio’pa',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 2/SentencesS2_4.wav',
              ),
              VocabularyItem(
                english: 'They will get a crusher/grinder',
                phonics: 'AA-GOO-DUCK-KEY-YAA EEH-DE-BIK-GYAA-GYOPE',
                translation: 'Aako’takiyaawa ihtaipikkiaakio’pa',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 2/SentencesS2_5.wav',
              ),
              VocabularyItem(
                english: 'We will get a crusher/grinder',
                phonics: 'AA-GOO-DUCK-GUPE EEH-DE-BIK-GYAA-GYOPE',
                translation: 'Aako’takiyo’pa ihtaipikkiaakio’pa',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 2/SentencesS2_6.wav',
              ),
            ],
          ),
          VocabularySection(
            title: "Section 3",
            items: [
              VocabularyItem(
                english: 'Crushed Chokecherries',
                phonics: 'BUCK-KSEE-KNEE-GEE-MAAN',
                translation: 'Pakksinikimaani',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 3/SentencesS3_1.wav',
              ),
              VocabularyItem(
                english: 'I will crush chokecherries',
                phonics: 'KNEE-DAA-KSEE-BUCK-KSEE-KNEE-GIM',
                translation: 'Nitaaksipakksinikimaa',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 3/SentencesS3_2.wav',
              ),
              VocabularyItem(
                english: 'You will crush chokecherries',
                phonics: 'GEE-DAA-KSEE-BUCK-KSEE-KNEE-KIM',
                translation: 'Kitaaksipakksinikimaa',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 3/SentencesS3_3.wav',
              ),
              VocabularyItem(
                english: 'They will crush chokecherries',
                phonics: 'AA-KSEE-BUCK-KSEE-KNEE-GIM-MAA-YAAW',
                translation: 'Aaksipakksinikimayaawa',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 3/SentencesS3_4.wav',
              ),
              VocabularyItem(
                english: 'We will crush chokecherries',
                phonics: 'AA-KSEE-BUCK-KSEE-KNEE-GIM-MOPE',
                translation: 'Aaksipakksinikimao’pa',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 3/SentencesS3_5.wav',
              ),
            ],
          ),
          VocabularySection(
            title: "Section 4",
            items: [
              VocabularyItem(
                english: 'Berry soup',
                phonics: 'OH-OH-SSIN',
                translation: 'Aoo’ssini',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 4/SentencesS4_1.wav',
              ),
              VocabularyItem(
                english: 'Can/able – root',
                phonics: 'OH-GOOT',
                translation: 'Ohkott',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 4/SentencesS4_2.wav',
              ),
              VocabularyItem(
                english: 'Saskatoons',
                phonics: 'OO-GOO-NOO-GESTS',
                translation: 'Okonokistsi',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 4/SentencesS4_3.wav',
              ),
              VocabularyItem(
                english: 'I can cook saskatoons',
                phonics: 'NE-DAA-KOH-GOOT-DOSE OO-GOO-NOO-GESTS',
                translation: 'Nitaakohkottaoo’ssi okonokistsi.',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 4/SentencesS4_4.wav',
              ),
              VocabularyItem(
                english: 'You can cook saskatoons',
                phonics: 'GE-DAA-KOH-GOOT-DOSE OO-GOO-NOO-GESTS',
                translation: 'Kitaakohkottaoo’ssi okonokistsi.',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 4/SentencesS4_5.wav',
              ),
              VocabularyItem(
                english: 'They can cook saskatoons',
                phonics: 'AAK-KOH-GOOT-DOSE-SEE-OW OO-GOO-NOO-GESTS',
                translation: 'Aakohkottaoo’ssiyaawa okonokistsi.',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 4/SentencesS4_6.wav',
              ),
              VocabularyItem(
                english: 'We can cook saskatoons',
                phonics: 'AAH-GOOT-DOSE-SOUP OO-GOO-NOO-GESTS',
                translation: 'Aohkottaoo’sso’pa okonokistsi.',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 4/SentencesS4_7.wav',
              ),
            ],
          ),
          VocabularySection(
            title: "Section 5",
            items: [
              VocabularyItem(
                english: 'Bake – root',
                phonics: 'EH-GEE-DAA',
                translation: 'Ihkiitaa',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 5/SentencesS5_1.wav',
              ),
              VocabularyItem(
                english: '(Pan) Bread',
                phonics: 'NUP-BUY-YEEN',
                translation: 'Napayini',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 5/SentencesS5_2.wav',
              ),
              VocabularyItem(
                english: 'I baked bread.',
                phonics: 'NITS-SKEET NUP-BUY-YEEN',
                translation: 'Nitsskiitaa napayini.',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 5/SentencesS5_3.wav',
              ),
              VocabularyItem(
                english: 'You bake bread.',
                phonics: 'GEE-DAA-KIH-GEET NUP-BUY-YEEN',
                translation: 'Kitaakihkiitaa napayini.',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 5/SentencesS5_4.wav',
              ),
              VocabularyItem(
                english: 'They baked bread.',
                phonics: 'E-GEEH-DA-YAA NUP-BUY-YEEN',
                translation: 'Aihkiitayaawa napayini.',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 5/SentencesS5_5.wav',
              ),
              VocabularyItem(
                english: 'We baked bread.',
                phonics: 'EH-GEE-DOPE NUP-BUY-YEEN',
                translation: 'Iihkiitao’pa napayini.',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 5/SentencesS5_6.wav',
              ),
            ],
          ),
          VocabularySection(
            title: "Section 6",
            items: [
              VocabularyItem(
                english: 'Go get/Pick – command',
                phonics: 'OH-DOO-DAA-GIT',
                translation: 'O’takit',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 6/SentencesS6_1.wav',
              ),
              VocabularyItem(
                english: 'Mint',
                phonics: 'GAA-KET-TSEM-MOY',
                translation: 'Ka’kitsimoi',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 6/SentencesS6_2.wav',
              ),
              VocabularyItem(
                english: 'I will pick mint.',
                phonics: 'KNEE-DAAK-OH-DOO-DUCK-KEY GAA-KET-TSEM-MOY',
                translation: 'Nitaakoto’taki ka’kitsimoi.',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 6/SentencesS6_3.wav',
              ),
              VocabularyItem(
                english: 'You will pick mint.',
                phonics: 'GEE-DAAK-OH-DOO-DUCK-KEY GAA-KET-TSEM-MOY',
                translation: 'Kitaakoto’taki ka’kitsimoi.',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 6/SentencesS6_4.wav',
              ),
              VocabularyItem(
                english: 'They will pick mint.',
                phonics: 'AA-GOO-DOO-DUCK-KEY-YAAW GAA-KET-TSEM-MOY',
                translation: 'Aakoto’takiyaawa ka’kitsimoi.',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 6/SentencesS6_5.wav',
              ),
              VocabularyItem(
                english: 'We will pick mint.',
                phonics: 'AA-GOO-DOO-DUCK-CUPE GAA-KET-TSEM-MOY',
                translation: 'Aako’takio’pa ka’kitsimoi.',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 6/SentencesS6_6.wav',
              ),
            ],
          ),
          VocabularySection(
            title: "Section 7",
            items: [
              VocabularyItem(
                english: 'Boil – root',
                phonics: 'AA-KOH-SIM-MAA',
                translation: 'Aakohsimaa',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 7/SentencesS7_1.wav',
              ),
              VocabularyItem(
                english: 'Mint',
                phonics: 'GAA-KET-TSEM-MOYI',
                translation: 'Ka’kitsimoi',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 7/SentencesS7_2.wav',
              ),
              VocabularyItem(
                english: 'I can make mint tea.',
                phonics: 'KNEE-DAA-GUCK-KOH-SIM GAA-KET-TSEM-MOYI',
                translation: 'Nitaakaakohsimaa ka’kitsimoi.',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 7/SentencesS7_3.wav',
              ),
              VocabularyItem(
                english: 'You can make mint tea.',
                phonics: 'GEE-DAA-GUCK-KOH-SIM GAA-KET-TSEM-MOYI',
                translation: 'Kitaakaakohsimaa ka’kitsimoi.',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 7/SentencesS7_4.wav',
              ),
              VocabularyItem(
                english: 'They can make mint tea.',
                phonics: 'AA-GUCK-KOH-SIM-MY-YOW GAA-KET-TSEM-MOYI',
                translation: 'Aakaakohsimayaawa ka’kitsimoi.',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 7/SentencesS7_5.wav',
              ),
              VocabularyItem(
                english: 'We will make mint tea.',
                phonics: 'AA-GUCK-KOH-SIM-MOPE GAA-KET-TSEM-MOYI',
                translation: 'Aakaakohsimao’pa ka’kitsimoi.',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 7/SentencesS7_6.wav',
              ),
            ],
          ),
          VocabularySection(
            title: "Section 8",
            items: [
              VocabularyItem(
                english: 'Go get/Pick – command',
                phonics: 'OH-DOO-DAA-GIT',
                translation: 'O’takit',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 8/SentencesS8_1.wav',
              ),
              VocabularyItem(
                english: 'Sage',
                phonics: 'GAA-KSEE-MOY',
                translation: 'Ka’ksimoi',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 8/SentencesS8_2.wav',
              ),
              VocabularyItem(
                english: 'I will pick sage.',
                phonics: 'KNEE-DAA-GOO-DO-DUCK GAA-KSEE-MOY',
                translation: 'Nitaakoto’taki ka’ksimoi.',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 8/SentencesS8_3.wav',
              ),
              VocabularyItem(
                english: 'You will pick sage.',
                phonics: 'GEE-DAA-GOO-DO-DUCK-KE GAA-KSEE-MOYI',
                translation: 'Kitaakoto’taki ka’ksimoi.',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 8/SentencesS8_4.wav',
              ),
              VocabularyItem(
                english: 'They will pick sage.',
                phonics: 'AAK-OH-DOO-DUCK-GEE-YAAW GAA-KSEE-MOY',
                translation: 'Aakoto’takiyaawa ka’ksimoi.',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 8/SentencesS8_5.wav',
              ),
              VocabularyItem(
                english: 'We will pick sage.',
                phonics: 'AAK-GOO-DOO-TUCK-CUPE GAA-KSEE-MOY',
                translation: 'Aakoto’takio’pa ka’ksimoi.',
                assetPath:
                    'vcabassets/Sentences/Audio/Section 8/SentencesS8_6.wav',
              ),
            ],
          ),
        ],
        actionList: [],
      ),

      // 10 to 14
      VocabularyCategory(
        title: "My Family",
        phonics: "Nomohpapiiyihpiksi",
        translation: "Nomohpapiiyihpiksi",
        imageUrl: "assets/vcabassets/My Family/MyFamily_Btn.png",
        isNew: true,
        actionList: [
          VocabularyItem(
            english: 'My Family',
            phonics: 'NOOM OH BA BEE YEH PEKS',
            translation: 'Nomohpapiiyihpiksi',
            assetPath: 'vcabassets/My Family/My Family/ELC_Family_199.wav',
          ),
          VocabularyItem(
            english: 'My father/dad',
            phonics: 'NEN NAA',
            translation: 'Ninnaa',
            assetPath: 'vcabassets/My Family/My Family/ELC_Family_200.wav',
          ),
          VocabularyItem(
            english: 'My mother',
            phonics: 'NEE KSESS DA',
            translation: 'Niksissta',
            assetPath: 'vcabassets/My Family/My Family/ELC_Family_201.wav',
          ),
          VocabularyItem(
            english: 'My grandparents',
            phonics: 'NAA AH SEKSE',
            translation: 'Naaahsiksi',
            assetPath: 'vcabassets/My Family/My Family/ELC_Family_202.wav',
          ),
          VocabularyItem(
            english: 'My younger sister',
            phonics: 'KNEE SESSA',
            translation: 'Nississa',
            assetPath: 'vcabassets/My Family/My Family/ELC_Family_203.wav',
          ),
          VocabularyItem(
            english: 'My older sister',
            phonics: 'NENS STAA',
            translation: 'Ninsstsa',
            assetPath: 'vcabassets/My Family/My Family/ELC_Family_204.wav',
          ),
          VocabularyItem(
            english: 'My older brother',
            phonics: 'KNEE SA',
            translation: 'Ni’sa',
            assetPath: 'vcabassets/My Family/My Family/ELC_Family_205.wav',
          ),
          VocabularyItem(
            english: 'My younger brother',
            phonics: 'NESS GUN',
            translation: 'Nisskan',
            assetPath: 'vcabassets/My Family/My Family/ELC_Family_206.wav',
          ),
          VocabularyItem(
            english: 'Infant',
            phonics: 'ISS SEE TSEE MA AN',
            translation: 'Issitsimaan',
            assetPath: 'vcabassets/My Family/My Family/ELC_Family_207.wav',
          ),
          VocabularyItem(
            english: 'Baby',
            phonics: 'EE NAK KSEE BOG AA',
            translation: 'I’naksipokaa',
            assetPath: 'vcabassets/My Family/My Family/ELC_Family_208.wav',
          ),
          VocabularyItem(
            english: 'Female Cousin',
            phonics: 'NEE TAA KEM',
            translation: 'Nitaakim',
            assetPath: 'vcabassets/My Family/My Family/ELC_Family_209.wav',
          ),
          VocabularyItem(
            english: 'Male Cousin (older)',
            phonics: 'NESS AH KEE NAMM',
            translation: 'Nisahkinaim',
            assetPath: 'vcabassets/My Family/My Family/ELC_Family_210.wav',
          ),
          VocabularyItem(
            english: 'My girlfriend',
            phonics: 'NEE TAA KEY GOO ONE',
            translation: 'Nitaaakiikowan',
            assetPath: 'vcabassets/My Family/My Family/ELC_Family_211.wav',
          ),
          VocabularyItem(
            english: 'My boyfriend',
            phonics: 'NES AH GOO AA BEAM',
            translation: 'Nisahkoaapiim',
            assetPath: 'vcabassets/My Family/My Family/ELC_Family_212.wav',
          ),
        ],
      ),

      VocabularyCategory(
        title: "Places in Alberta",
        phonics: "Alberta Aakaitapisskoistsi",
        translation: "Alberta Aakaitapisskoistsi",
        imageUrl: "assets/vcabassets/Places in Alberta/Alberta_Btn.png",
        isNew: true,
        actionList: [
          VocabularyItem(
            english: 'Claresholm',
            phonics: 'AA SOY INN NAA PEW YES',
            translation: 'Asoyinnaapiooyis (Barrel House)',
            assetPath:
                'vcabassets/Places in Alberta/Places Audio/ELC_PlacesAlberta_213.wav',
            imageUrl:
                "assets/vcabassets/Places in Alberta/webp/1. Claresholm.webp",
          ),
          VocabularyItem(
            english: 'Waterton Lakes',
            phonics: 'BAA TOO MAHK KSEE KEE MEE',
            translation: 'Paahtomahksikimi (big inside lake)',
            assetPath:
                'vcabassets/Places in Alberta/Places Audio/ELC_PlacesAlberta_214.wav',
            imageUrl:
                "assets/vcabassets/Places in Alberta/webp/2.-Waterton_Lakes.webp",
          ),
          VocabularyItem(
            english: 'Lethbridge',
            phonics: 'SEE GOOH GO TOK',
            translation: 'Sikoohkotok (black rock)',
            assetPath:
                'vcabassets/Places in Alberta/Places Audio/ELC_PlacesAlberta_215.wav',
            imageUrl:
                "assets/vcabassets/Places in Alberta/webp/3.-Lethbridge.webp",
          ),
          VocabularyItem(
            english: 'Pincher Creek',
            phonics: 'SPEE TSEE',
            translation: 'Spitsii (tall trees)',
            assetPath:
                'vcabassets/Places in Alberta/Places Audio/ELC_PlacesAlberta_216.wav',
            imageUrl:
                "assets/vcabassets/Places in Alberta/webp/4.-Pincher-Creek.webp",
          ),
          VocabularyItem(
            english: 'Fort McLeod',
            phonics: 'AA GAA PEW YES',
            translation: 'Aakaaapoiyis (many houses)',
            assetPath:
                'vcabassets/Places in Alberta/Places Audio/ELC_PlacesAlberta_217.wav',
            imageUrl:
                "assets/vcabassets/Places in Alberta/webp/5.-Fort-Mcleod.webp",
          ),
          VocabularyItem(
            english: 'Calgary',
            phonics: 'MOO KEEN TSEE',
            translation: 'Mohkinitsi (elbow)',
            assetPath:
                'vcabassets/Places in Alberta/Places Audio/ELC_PlacesAlberta_218.wav',
            imageUrl:
                "assets/vcabassets/Places in Alberta/webp/6.-Calgary.webp",
          ),
          VocabularyItem(
            english: 'Edmonton',
            phonics: 'OOM AHK OO YIS',
            translation: 'Omahkoyis (big house)',
            assetPath:
                'vcabassets/Places in Alberta/Places Audio/ELC_PlacesAlberta_219.wav',
            imageUrl:
                "assets/vcabassets/Places in Alberta/webp/7. Edmonton.webp",
          ),
          VocabularyItem(
            english: 'Cardston',
            phonics: 'AA GO KEE MEKSE',
            translation: 'Aakokimiksi (many wives)',
            assetPath:
                'vcabassets/Places in Alberta/Places Audio/ELC_PlacesAlberta_220.wav',
            imageUrl:
                "assets/vcabassets/Places in Alberta/webp/8. Cardston.webp",
          ),
          VocabularyItem(
            english: 'Medicine Hat',
            phonics: 'SAA AAM SIN',
            translation: 'Saaamsin (headdress)',
            assetPath:
                'vcabassets/Places in Alberta/Places Audio/ELC_PlacesAlberta_221.wav',
            imageUrl:
                "assets/vcabassets/Places in Alberta/webp/9. Medicine Hat.webp",
          ),
          VocabularyItem(
            english: 'Old Man River',
            phonics: 'NAA BEH DAA',
            translation: 'Naapihtaa',
            assetPath:
                'vcabassets/Places in Alberta/Places Audio/ELC_PlacesAlberta_222.wav',
            imageUrl:
                "assets/vcabassets/Places in Alberta/webp/10. Old Man River.webp",
          ),
          VocabularyItem(
            english: 'Bow River',
            phonics: 'NUM MIH DAA',
            translation: 'Naamihtaa',
            assetPath:
                'vcabassets/Places in Alberta/Places Audio/ELC_PlacesAlberta_223.wav',
            imageUrl:
                "assets/vcabassets/Places in Alberta/webp/11. Bow River.webp",
          ),
          VocabularyItem(
            english: 'Piikani Land',
            phonics: 'BEE GUN NESS KSAAH GO',
            translation: 'Piikaniksaahko',
            assetPath:
                'vcabassets/Places in Alberta/Places Audio/ELC_PlacesAlberta_224.wav',
            imageUrl:
                "assets/vcabassets/Places in Alberta/webp/12.-Piikani-Land.webp",
          ),
          VocabularyItem(
            english: 'Mountains',
            phonics: 'MEE STUCK KEE TSE',
            translation: 'Miistakitsi',
            assetPath:
                'vcabassets/Places in Alberta/Places Audio/ELC_PlacesAlberta_225.wav',
            imageUrl:
                "assets/vcabassets/Places in Alberta/webp/13. Mountains.webp",
          ),
          VocabularyItem(
            english: 'Forest',
            phonics: 'UTSO WAA SSKOO',
            translation: 'Atsowa’ssko',
            assetPath:
                'vcabassets/Places in Alberta/Places Audio/ELC_PlacesAlberta_226.wav',
            imageUrl:
                "assets/vcabassets/Places in Alberta/webp/14. Forest.webp",
          ),
        ],
      ),
      VocabularyCategory(
        title: "Piikani Clans",
        phonics: "Piikani Iihkawaiksi",
        translation: " Piikani Iihkawaiksi",
        imageUrl: "assets/vcabassets/Piikani Clans/PiikaniClans_Btn.png",
        isNew: true,
        actionList: [
          VocabularyItem(
            english: 'Piikani Clans',
            phonics: 'BEE GAA KNEE – EEH KAA WAA YEEKS',
            translation: 'Piikani – iihkawaiksi',
            assetPath:
                'vcabassets/Piikani Clans/Piikani Clans/ELC_PiikaniClans_259.wav',
          ),
          VocabularyItem(
            english: 'Coyote/Wolf Cut Bank',
            phonics: 'MAAKO YEEPAA SSKAA TAAN',
            translation: 'Makoyipisskataan',
            assetPath:
                'vcabassets/Piikani Clans/Piikani Clans/ELC_PiikaniClans_260.wav',
          ),
          VocabularyItem(
            english: 'Hairy Nose (1)',
            phonics: 'IMMOO YESS KSEE SEEK SE',
            translation: 'Immoyissksisiiksi',
            assetPath:
                'vcabassets/Piikani Clans/Piikani Clans/ELC_PiikaniClans_261.wav',
          ),
          VocabularyItem(
            english: 'Padded Saddles (1)',
            phonics: 'COOT TSAA KEE YEE TAA KSEE',
            translation: 'Kootsaakiiyi’taaiksi',
            assetPath: 'vcabassets/Piikani Clans/Piikani Clans/ELC_PiikaniClans_262.wav',
          ),
          VocabularyItem(
            english: 'Lone Fighters',
            phonics: 'KNEE TAA TA SSKSEE',
            translation: 'Ni’taiitsskaiksi',
            assetPath:
                'vcabassets/Piikani Clans/Piikani Clans/ELC_PiikaniClans_263.wav',
          ),
          VocabularyItem(
            english: 'Never/Seldom Lonesome (2)',
            phonics: 'MEW WAAH PEET TSEE KEEKS',
            translation: 'Miaawaahpittsiiksi',
            assetPath:
                'vcabassets/Piikani Clans/Piikani Clans/ELC_PiikaniClans_264.wav',
          ),
          VocabularyItem(
            english: 'Pocket close Piikani (2)',
            phonics: 'SKI NEE BEE GAN KNEE',
            translation: 'Skiinii Piikani',
            assetPath:  'vcabassets/Piikani Clans/Piikani Clans/ELC_PiikaniClans_265.wav',
          ),
          VocabularyItem(
            english: 'Cattail or Bullrushes',
            phonics: 'AA BAA TAA PEEKS',
            translation: 'Aapaiaitapiksi',
            assetPath:
                'vcabassets/Piikani Clans/Piikani Clans/ELC_PiikaniClans_266.wav',
          ),
          VocabularyItem(
            english: 'Buffalo Chip',
            phonics: 'GAAM EH TAA NEKSEE',
            translation: 'Kaamihtaaniksi',
            assetPath:
                'vcabassets/Piikani Clans/Piikani Clans/ELC_PiikaniClans_267.wav',
          ),
          VocabularyItem(
            english: 'White Chests/Breasts',
            phonics: 'GAA YEK GOO KEE EEKSE',
            translation: 'Kayikkao’kiikiniiksi',
            assetPath:
                'vcabassets/Piikani Clans/Piikani Clans/ELC_PiikaniClans_268.wav',
          ),
          VocabularyItem(
            english: 'White Robes (3)',
            phonics: 'KSEK TSEE SOOK GAA SIM EEKSE',
            translation: 'Ksikisok’simiksi',
            assetPath:
                'vcabassets/Piikani Clans/Piikani Clans/ELC_PiikaniClans_269.wav',
          ),
          VocabularyItem(
            english: 'High Bush (3)',
            phonics: 'SS PICK SKOO TAA PEKSE',
            translation: 'Sspikoitapiiksi',
            assetPath:
                'vcabassets/Piikani Clans/Piikani Clans/ELC_PiikaniClans_270.wav',
          ),
          VocabularyItem(
            english: 'Gopher Eaters',
            phonics: 'OMM AAH KOOK AA TOO YEE KSEE',
            translation: 'Omahkokataooyiiksi',
            assetPath:
                'vcabassets/Piikani Clans/Piikani Clans/ELC_PiikaniClans_271.wav',
          ),
        ],
      ),

      // VocabularyCategory(
      //   title: "Commands",
      //   phonics: "Anaassopa -Asking",
      //   translation: "aa nun soup",
      //   imageUrl: "assets/vcabassets/ Commands/Commands_Btn.png",
      //   isNew: true,
      //   actionList: [
      //     VocabularyItem(
      //       english: 'Come here (BOOH SAA BOOT)',
      //       phonics: 'Poohsapoot',
      //       translation: 'BOOH SAA BOOT',
      //       assetPath: 'vcabassets/ Commands/Commands Audio/19- Come here.wav',
      //     ),
      //     VocabularyItem(
      //       english: 'Stand up (KNEE BOO BOO YET)',
      //       phonics: 'Nipopoyit',
      //       translation: 'KNEE BOO BOO YET',
      //       assetPath: 'vcabassets/ Commands/Commands Audio/32- Stand up.wav',
      //     ),
      //     VocabularyItem(
      //       english: 'Give/hand me (GOO KIT)',
      //       phonics: 'Ko’kit',
      //       translation: 'GOO KIT',
      //       assetPath:
      //           'vcabassets/ Commands/Commands Audio/23- Give Me or Hand Me.wav',
      //     ),
      //     VocabularyItem(
      //       english: 'Go get it (MAA TOO TSET)',
      //       phonics: 'Mato’tsit',
      //       translation: 'MAA TOO TSET',
      //       assetPath: 'vcabassets/ Commands/Commands Audio/22- Go get it.wav',
      //     ),
      //     VocabularyItem(
      //       english: 'Stand up (KNEE BOO BOO YIT)',
      //       phonics: 'Niipoipoyit',
      //       translation: 'KNEE BOO BOO YIT',
      //       assetPath: 'vcabassets/ Commands/Commands Audio/32- Stand up.wav',
      //     ),
      //     VocabularyItem(
      //       english: 'Sit down (MAA GOO BEET)',
      //       phonics: 'Makopit',
      //       translation: 'MAA GOO BEET',
      //       assetPath: 'vcabassets/ Commands/Commands Audio/31- Sit down.wav',
      //     ),
      //     VocabularyItem(
      //       english: 'Come in (BEET)',
      //       phonics: 'Piit',
      //       translation: 'BEET',
      //       assetPath: 'vcabassets/ Commands/Commands Audio/20- Come in.wav',
      //     ),
      //     VocabularyItem(
      //       english: 'Yes (AAH)',
      //       phonics: 'Aa',
      //       translation: 'AAH',
      //       assetPath: 'vcabassets/ Commands/Commands Audio/29- Yes.wav',
      //     ),
      //     VocabularyItem(
      //       english: 'No (SAAH)',
      //       phonics: 'Saa',
      //       translation: 'SAAH',
      //       assetPath: 'vcabassets/ Commands/Commands Audio/30- No.wav',
      //     ),
      //     VocabularyItem(
      //       english: 'Excuse me (NOO WAAK)',
      //       phonics: 'Niowaak',
      //       translation: 'NOO WAAK',
      //       assetPath: 'vcabassets/ Commands/Commands Audio/21- Excuse me.wav',
      //     ),
      //     VocabularyItem(
      //       english: 'I do not know (MAAT SS KSEE KNEE BA)',
      //       phonics: 'Maatssksinii’pa',
      //       translation: 'MAAT SS KSEE KNEE BA',
      //       assetPath:
      //           "vcabassets/ Commands/Commands Audio/26- I don't know.wav",
      //     ),
      //     VocabularyItem(
      //       english: 'I understand (KNEE DOO TSEE TAA BEE DUCK)',
      //       phonics: 'Nitotsistapi’takit',
      //       translation: 'KNEE DOO TSEE TAA BEE DUCK',
      //       assetPath:
      //           'vcabassets/ Commands/Commands Audio/28- I understand.wav',
      //     ),
      //     VocabularyItem(
      //       english: 'I do not understand (KNEE MAAT DAH TSEE TA BEET TUK BA)',
      //       phonics: 'Nimaataotsistapi’takihpa',
      //       translation: 'KNEE MAAT DAH TSEE TA BEET TUK BA',
      //       assetPath:
      //           'vcabassets/ Commands/Commands Audio/27- I dont understand.wav',
      //     ),
      //     VocabularyItem(
      //       english: 'Just a moment (GEE GAA)',
      //       phonics: 'Kika',
      //       translation: 'GEE GAA',
      //       assetPath:
      //           'vcabassets/ Commands/Commands Audio/25- Just a moment.wav',
      //     ),
      //     VocabularyItem(
      //       english: 'What is it? (AAH SAA)',
      //       phonics: 'Aahsa',
      //       translation: 'AAH SAA',
      //       assetPath: 'vcabassets/ Commands/Commands Audio/24- What is it.wav',
      //     ),
      //     VocabularyItem(
      //       english: 'Where? (TSEE MAA)',
      //       phonics: 'Tsima',
      //       translation: 'TSEE MAA',
      //       assetPath: 'vcabassets/ Commands/Commands Audio/33- Where.wav',
      //     ),
      //     VocabularyItem(
      //       english: 'Why? (MA KUT)',
      //       phonics: 'Maak',
      //       translation: 'MA KUT',
      //       assetPath: 'vcabassets/ Commands/Commands Audio/34- Why.wav',
      //     ),
      //   ],
      // ),
      VocabularyCategory(
        title: "Commands",
        phonics: "Anaassopa -Asking",
        translation: "Anaassopa",
        imageUrl: "assets/vcabassets/ Commands/Commands_Btn.png",
        isNew: true,
        actionList: [
          VocabularyItem(
            english: 'Come here',
            phonics: 'BOOH SAA BOOT',
            translation: 'Poohsapoot',
            assetPath: 'vcabassets/ Commands/Commands Audio/19- Come here.wav',
          ),
          VocabularyItem(
            english: 'Stand up',
            phonics: 'KNEE BOO BOO YET',
            translation: 'Nipopoyit',
            assetPath: 'vcabassets/ Commands/Commands Audio/32- Stand up.wav',
          ),
          VocabularyItem(
            english: 'Give/hand me',
            phonics: 'GOO KIT',
            translation: 'Ko’kit',
            assetPath:
                'vcabassets/ Commands/Commands Audio/23- Give Me or Hand Me.wav',
          ),
          VocabularyItem(
            english: 'Go get it',
            phonics: 'MAA TOO TSET',
            translation: 'Mato’tsit',
            assetPath: 'vcabassets/ Commands/Commands Audio/22- Go get it.wav',
          ),
          VocabularyItem(
            english: 'Sit down',
            phonics: 'MAA GOO BEET',
            translation: 'Makopit',
            assetPath: 'vcabassets/ Commands/Commands Audio/31- Sit down.wav',
          ),
          VocabularyItem(
            english: 'Come in',
            phonics: 'BEET',
            translation: 'Piit',
            assetPath: 'vcabassets/ Commands/Commands Audio/20- Come in.wav',
          ),
          VocabularyItem(
            english: 'Yes',
            phonics: 'AAH',
            translation: 'Aa',
            assetPath: 'vcabassets/ Commands/Commands Audio/29- Yes.wav',
          ),
          VocabularyItem(
            english: 'No',
            phonics: 'SAAH',
            translation: 'Saa',
            assetPath: 'vcabassets/ Commands/Commands Audio/30- No.wav',
          ),
          VocabularyItem(
            english: 'Excuse me',
            phonics: 'NOO WAAK',
            translation: 'Niowaak',
            assetPath: 'vcabassets/ Commands/Commands Audio/21- Excuse me.wav',
          ),
          VocabularyItem(
            english: 'I do not know',
            phonics: 'MAAT SS KSEE KNEE BA',
            translation: 'Maatssksinii’pa',
            assetPath:
                "vcabassets/ Commands/Commands Audio/26- I don't know.wav",
          ),
          VocabularyItem(
            english: 'I understand',
            phonics: 'KNEE DOO TSEE TAA BEE DUCK',
            translation: 'Nitotsistapi’takit',
            assetPath:
                'vcabassets/ Commands/Commands Audio/28- I understand.wav',
          ),
          VocabularyItem(
            english: 'I do not understand',
            phonics: 'KNEE MAAT DAH TSEE TA BEET TUK BA',
            translation: 'Nimaataotsistapi’takihpa',
            assetPath:
                'vcabassets/ Commands/Commands Audio/27- I dont understand.wav',
          ),
          VocabularyItem(
            english: 'Just a moment',
            phonics: 'GEE GAA',
            translation: 'Kika',
            assetPath:
                'vcabassets/ Commands/Commands Audio/25- Just a moment.wav',
          ),
          VocabularyItem(
            english: 'What is it?',
            phonics: 'AAH SAA',
            translation: 'Aahsa',
            assetPath: 'vcabassets/ Commands/Commands Audio/24- What is it.wav',
          ),
          VocabularyItem(
            english: 'Where?',
            phonics: 'TSEE MAA',
            translation: 'Tsima',
            assetPath: 'vcabassets/ Commands/Commands Audio/33- Where.wav',
          ),
          VocabularyItem(
            english: 'Why?',
            phonics: 'MA KUT',
            translation: 'Maak',
            assetPath: 'vcabassets/ Commands/Commands Audio/34- Why.wav',
          ),
        ],
      ),
      VocabularyCategory(
        title: "Greetings",
        phonics: "O'taatsiyiop",
        translation: "O'taatsiyiop",
        imageUrl: "assets/vcabassets/Greetings/Greetings_Btn.png",
        isNew: true,
        actionList: [
          VocabularyItem(
            english: 'Hello',
            phonics: 'OAK KEY',
            translation: 'Okii',
            assetPath: 'vcabassets/Greetings/Greetings Audio 1-17/1-Hello.wav',
          ),
          VocabularyItem(
            english: 'My name is ...',
            phonics: 'KNEE DA NICK GOO',
            translation: 'Nitanikkoo …',
            assetPath:
                'vcabassets/Greetings/Greetings Audio 1-17/2 -My Name is.wav',
          ),
          VocabularyItem(
            english: 'What is your name?',
            phonics: 'TSA KEY DA NICK GOO',
            translation: 'Tsa kitanikkoo?',
            assetPath:
                'vcabassets/Greetings/Greetings Audio 1-17/3 -What is your name.wav',
          ),
          VocabularyItem(
            english: 'Nice to meet you',
            phonics: 'EEK KSEE MUT DAA TSEE YO',
            translation: 'I’ksimato’taatsiyiop',
            assetPath:
                'vcabassets/Greetings/Greetings Audio 1-17/4- Nice to meet you.wav',
          ),
          VocabularyItem(
            english: 'How are you today?',
            phonics: 'TSA KNEE DA BEE',
            translation: 'Tsa niita’piiwa?',
            assetPath:
                'vcabassets/Greetings/Greetings Audio 1-17/5- How are you today.wav',
          ),
          VocabularyItem(
            english: 'I am fine',
            phonics: 'EEK SUE GAA BEE',
            translation: 'Iiksooka’piiwa',
            assetPath:
                'vcabassets/Greetings/Greetings Audio 1-17/6- I am fine.wav',
          ),
          VocabularyItem(
            english: 'And you?',
            phonics: 'GEE STU',
            translation: 'Kiisto?',
            assetPath:
                'vcabassets/Greetings/Greetings Audio 1-17/7- And You.wav',
          ),
          VocabularyItem(
            english: 'How old are you?',
            phonics: 'TSA GAA NESS TSS TOO YEEM EH BA',
            translation: 'Tsa kaanistsisstoyimihpa?',
            assetPath:
                'vcabassets/Greetings/Greetings Audio 1-17/8 -How old are you.wav',
          ),
          VocabularyItem(
            english: 'I’m … years old',
            phonics: 'KNEE DA #SS TOO YEEM',
            translation: 'Nita # sstoyim',
            assetPath:
                'vcabassets/Greetings/Greetings Audio 1-17/9- I am years old.wav',
          ),
          VocabularyItem(
            english: 'Where are you from?',
            phonics: 'TSE MAA KIM O TOO TO BA',
            translation: 'Tsima kimoh’too pa?',
            assetPath:
                'vcabassets/Greetings/Greetings Audio 1-17/10- Where are you from.wav',
          ),
          VocabularyItem(
            english: 'I am from ...',
            phonics: 'NIMM OH TOO TO',
            translation: 'Nimoh’tooto…',
            assetPath:
                'vcabassets/Greetings/Greetings Audio 1-17/11- I am from.wav',
          ),
          VocabularyItem(
            english: 'Where do you live?',
            phonics: 'TSEE MA KEE TSET OPEE BA',
            translation: 'Tsima kitsitoopi’pa?',
            assetPath:
                'vcabassets/Greetings/Greetings Audio 1-17/12- Where do you live.wav',
          ),
          VocabularyItem(
            english: 'I live ...',
            phonics: 'KNEE TSET OO BEE',
            translation: 'Nitsitoopii…',
            assetPath:
                'vcabassets/Greetings/Greetings Audio 1-17/13- I live.wav',
          ),
          VocabularyItem(
            english: 'Good Morning',
            phonics: 'EE DAA MICK SS NOO TOO KNEE',
            translation: 'I’taami Ksisskanotonni',
            assetPath:
                'vcabassets/Greetings/Greetings Audio 1-17/14- Good Morning.wav',
          ),
          VocabularyItem(
            english: 'Good Afternoon',
            phonics: 'EE DA ME TA TSEE GA KSS GO',
            translation: 'I’taami Tatsikkiaiksistsiko',
            assetPath:
                'vcabassets/Greetings/Greetings Audio 1-17/15- Good Afternoon.wav',
          ),
          VocabularyItem(
            english: 'Good Night',
            phonics: 'EE DA ME GOO GOO',
            translation: 'I’taami ko’ko',
            assetPath:
                'vcabassets/Greetings/Greetings Audio 1-17/16- Good Night.wav',
          ),
          VocabularyItem(
            english: 'See you later',
            phonics: 'GAA KEE DAA MUT TSEN',
            translation: 'Kiakitamatsin',
            assetPath:
                'vcabassets/Greetings/Greetings Audio 1-17/17- See you later.wav',
          ),
          VocabularyItem(
            english: 'Real/genuine speaks',
            phonics: 'KNEE TSEE BOO WAAH SIN',
            translation: 'Niitsii’powahsin',
            assetPath:
                'vcabassets/Greetings/Greetings Audio 18-28/ELC_Greetings_1.wav',
          ),
          VocabularyItem(
            english: 'Greetings/meeting',
            phonics: 'KNEE TOE TAAT TSEE YOU BA',
            translation: 'Niito’taaatatsiyopa',
            assetPath:
                'vcabassets/Greetings/Greetings Audio 18-28/ELC_Greetings_2.wav',
          ),
          VocabularyItem(
            english: 'Hello my friends/relatives',
            phonics: 'OAK KEY, NIC KSO GOO WAA KSEE',
            translation: 'Okii Nikso’kowaiksi',
            assetPath:
                'vcabassets/Greetings/Greetings Audio 18-28/ELC_Greetings_3.wav',
          ),
          VocabularyItem(
            english: 'I shake hands with you all',
            phonics: 'KEY TSEE KSE MUT TSEM BOO WAA',
            translation: 'Ki tsi ksi matsim mo po wa',
            assetPath:
                'vcabassets/Greetings/Greetings Audio 18-28/ELC_Greetings_4.wav',
          ),
          VocabularyItem(
            english: 'My name is …',
            phonics: 'KNEE STOW – NITA NICK GOO',
            translation: 'Niisto Nitaniko',
            assetPath:
                'vcabassets/Greetings/Greetings Audio 18-28/ELC_Greetings_5.wav',
          ),
          VocabularyItem(
            english: 'My father’s name is',
            phonics: 'NEN NAA – AA NESS TAA WA',
            translation: 'Ninna aanistawa',
            assetPath:
                'vcabassets/Greetings/Greetings Audio 18-28/ELC_Greetings_6.wav',
          ),
          VocabularyItem(
            english: 'My mother’s name is',
            phonics: 'NEE KSES STAA – AA NESS TAA WA',
            translation: 'Niksissta aanistawa',
            assetPath:
                'vcabassets/Greetings/Greetings Audio 18-28/ELC_Greetings_7.wav',
          ),
          VocabularyItem(
            english: 'My grandparents’ names are',
            phonics: 'NAAHA SEKSE – AA NESS TAA YAA WAA',
            translation: 'Naaahsiksi anistayawa',
            assetPath:
                'vcabassets/Greetings/Greetings Audio 18-28/ELC_Greetings_8.wav',
          ),
          VocabularyItem(
            english: 'I am from',
            phonics: 'NIM MO TOO TOO',
            translation: 'Nitommo’toto',
            assetPath:
                'vcabassets/Greetings/Greetings Audio 18-28/ELC_Greetings_9.wav',
          ),
          VocabularyItem(
            english: 'My relatives (family)',
            phonics: 'NOOM OO PAA PEE YEEH PIK SS',
            translation: 'Nomohpapiiyihpiksi',
            assetPath:
                'vcabassets/Greetings/Greetings Audio 18-28/ELC_Greetings_10.wav',
          ),
          VocabularyItem(
            english: 'My relatives/friends',
            phonics: 'NICK SO KOO WAA EKSE',
            translation: 'Nikso’kowaiksi',
            assetPath:
                'vcabassets/Greetings/Greetings Audio 18-28/ELC_Greetings_11.wav',
          ),
        ],
      ),

      VocabularyCategory(
        title: "Food & Drinks",
        phonics: "Aoowahsiistsi Kii Simssiistsi",
        translation: "Aoowahsiistsi Kii Simssiistsi",
        imageUrl: "assets/vcabassets/Food & Drinks/Food_Drinks_Btn.png",
        isNew: true,
        actionList: [
          VocabularyItem(
            english: 'Sugar',
            phonics: 'NAA-BEE-NOO-WAAN',
            translation: 'Naapiinowani',
            assetPath: 'vcabassets/Food & Drinks/Audio/32. Sugar.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/1.-Sugar.webp',
          ),
          VocabularyItem(
            english: 'Flour Dough',
            phonics: 'OO-GAP-BUY-YEEN',
            translation: 'O’kapayini',
            assetPath: 'vcabassets/Food & Drinks/Audio/33. Flour.wav',
            imageUrl:
                'assets/vcabassets/Food & Drinks/webp/2.-Flour_Dough.webp',
          ),
          VocabularyItem(
            english: 'Baking Powder',
            phonics: 'EE-DEH-GEE-DOPE',
            translation: 'Iitaihkiitao’pa',
            assetPath: 'vcabassets/Food & Drinks/Audio/34. Baking Powder.wav',
            imageUrl:
                'assets/vcabassets/Food & Drinks/webp/3.-Baking-Powder.webp',
          ),
          VocabularyItem(
            english: 'Breakfast',
            phonics: 'KSEE GAA NOO WAA SIN',
            translation: 'Ksisskaonowahsin',
            assetPath: 'vcabassets/Food & Drinks/Audio/35- Breakfast.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/4.-Breakfast.webp',
          ),
          VocabularyItem(
            english: 'Lunch',
            phonics: 'EEH DAA TSEE CUE SIN',
            translation: 'Ihtatsikiooysin',
            assetPath: 'vcabassets/Food & Drinks/Audio/36- Lunch.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/5.-Lunch.webp',
          ),
          VocabularyItem(
            english: 'Dinner',
            phonics: 'OO TUCK KSOO SIN',
            translation: 'Otakakowahsin',
            assetPath: 'vcabassets/Food & Drinks/Audio/37- Dinner.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/6.-Dinner.webp',
          ),
          VocabularyItem(
            english: 'I’m hungry',
            phonics: 'KNEE TSET TSOO GEE NEE',
            translation: 'Nitsisttsoikini',
            assetPath: "vcabassets/Food & Drinks/Audio/38- I'm hungry.wav",
            imageUrl: "assets/vcabassets/Food & Drinks/webp/7.-I'm-Hungry.webp",
          ),
          VocabularyItem(
            english: 'Are you hungry?',
            phonics: 'GEE DATA TSOO GEE NEE BA',
            translation: 'Katattsoikinipa?',
            assetPath: 'vcabassets/Food & Drinks/Audio/39- Are you hungry.wav',
            imageUrl:
                'assets/vcabassets/Food & Drinks/webp/8.-Are-You-Hungry.webp',
          ),
          VocabularyItem(
            english: 'Apple',
            phonics: 'AA BASS TAA MEE NAAM',
            translation: 'Aipasstaamiinaamm',
            assetPath: 'vcabassets/Food & Drinks/Audio/40- Apple.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/9.-Apple.webp',
          ),
          VocabularyItem(
            english: 'Banana',
            phonics: 'EE NAAN',
            translation: 'I’nan',
            assetPath: 'vcabassets/Food & Drinks/Audio/41- Banana.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/10.-Banana.webp',
          ),
          VocabularyItem(
            english: 'Lemon',
            phonics: 'EE DASS TOO KIM STOO BA',
            translation: 'I’tasstokimsstopa',
            assetPath: 'vcabassets/Food & Drinks/Audio/42- Lemon.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/11.-Lemon.webp',
          ),
          VocabularyItem(
            english: 'Orange',
            phonics: 'AOT AH GOO NAAM',
            translation: 'Aotahkoinaamm',
            assetPath: 'vcabassets/Food & Drinks/Audio/43- Orange.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/12.-Orange.webp',
          ),
          VocabularyItem(
            english: 'Carrot',
            phonics: 'KNEE STEE GAA BAAS',
            translation: 'Niistsikapa’s',
            assetPath: 'vcabassets/Food & Drinks/Audio/44- Carrot.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/13.-Carrot.webp',
          ),
          VocabularyItem(
            english: 'Tomato',
            phonics: 'GEE KNEE',
            translation: 'Kinii',
            assetPath: 'vcabassets/Food & Drinks/Audio/45- Tomato.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/14.-Tomatoe.webp',
          ),
          VocabularyItem(
            english: 'Celery',
            phonics: 'NAA BE KENN SOO MOO YEE',
            translation: 'Naapikkinssimoyi',
            assetPath: 'vcabassets/Food & Drinks/Audio/46- Celery.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/15.-Celery.webp',
          ),
          VocabularyItem(
            english: 'Onion',
            phonics: 'BEE SUT TSEE KNEE KIM',
            translation: 'Pisatsiinikimm',
            assetPath: 'vcabassets/Food & Drinks/Audio/47- Onion.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/18.-Onion.webp',
          ),
          VocabularyItem(
            english: 'Meat',
            phonics: 'EE TSEE SUC GOO',
            translation: 'I’ksisako',
            assetPath: 'vcabassets/Food & Drinks/Audio/48- Meat.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/17.-Meat.webp',
          ),
          VocabularyItem(
            english: 'Milk',
            phonics: 'OO NIC KISS',
            translation: 'Onnikis',
            assetPath: 'vcabassets/Food & Drinks/Audio/49- Milk.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/19.-Milk.webp',
          ),
          VocabularyItem(
            english: 'Bread',
            phonics: 'NAA BAA YEEN',
            translation: 'Napayin',
            assetPath: 'vcabassets/Food & Drinks/Audio/50- Bread.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/20.-Bread.webp',
          ),
          VocabularyItem(
            english: 'Eggs',
            phonics: 'OO WAA TSEE',
            translation: 'Owaaiksi',
            assetPath: 'vcabassets/Food & Drinks/Audio/51- Eggs.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/21.-Eggs.webp',
          ),
          VocabularyItem(
            english: 'Juice',
            phonics: 'TSEE YEE GOO POO SIM SIN',
            translation: 'Tsiyipoksimsin',
            assetPath: 'vcabassets/Food & Drinks/Audio/52- Juice.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/22.-Juice.webp',
          ),
          VocabularyItem(
            english: 'Lard',
            phonics: 'EMM ME TSEE',
            translation: 'Immistsii',
            assetPath: 'vcabassets/Food & Drinks/Audio/53- Lard.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/23.-Lard.webp',
          ),
          VocabularyItem(
            english: 'Salt',
            phonics: 'IS TSEE KSEE BOO GOO',
            translation: 'Isstsiksipoko',
            assetPath: 'vcabassets/Food & Drinks/Audio/54- Salt.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/24.-Salt.webp',
          ),
          VocabularyItem(
            english: 'Pepper',
            phonics: 'AAPS STAA GAA BOO GOO',
            translation: 'Apisstaahkaipoko',
            assetPath: 'vcabassets/Food & Drinks/Audio/55- Pepper.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/25.-Pepper.webp',
          ),
          VocabularyItem(
            english: 'Water',
            phonics: 'OOH GEE',
            translation: 'Aohki',
            assetPath: 'vcabassets/Food & Drinks/Audio/56- Water.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/26.-Water.webp',
          ),
          VocabularyItem(
            english: 'Pop',
            phonics: 'AA SAA GOO TSEE',
            translation: 'Aisaakotsii',
            assetPath: 'vcabassets/Food & Drinks/Audio/57- Pop.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/27.-Pop.webp',
          ),
          VocabularyItem(
            english: 'Ice Cream',
            phonics: 'IS TOO WAA SIN',
            translation: 'Isstoowahsin',
            assetPath: 'vcabassets/Food & Drinks/Audio/58- Ice cream.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/28.-Ice-Cream.webp',
          ),
          VocabularyItem(
            english: 'Candy',
            phonics: 'BEE SUT TSEE BEE NOO ONE',
            translation: 'Pisatsaapiiniowan',
            assetPath: 'vcabassets/Food & Drinks/Audio/59- Candy.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/29.-Candy.webp',
          ),
          VocabularyItem(
            english: 'Gum',
            phonics: 'AA WAK KSEE',
            translation: 'Aawakksis',
            assetPath: 'vcabassets/Food & Drinks/Audio/60- Gum.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/30.-Gum.webp',
          ),
          VocabularyItem(
            english: 'Coffee',
            phonics: 'KNEE DAA BAA TSEK TSEE GEE ME',
            translation: 'Niita’paisikimi',
            assetPath: 'vcabassets/Food & Drinks/Audio/61- Coffee.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/31.-Coffee.webp',
          ),
          VocabularyItem(
            english: 'Tea',
            phonics: 'AA SEE KSEE GEE ME',
            translation: 'Aisiksikimi',
            assetPath: 'vcabassets/Food & Drinks/Audio/62- Tea.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/32.-Tea.webp',
          ),
          VocabularyItem(
            english: 'I’m thirsty',
            phonics: 'KNEE TSEE KSEE NAA GE',
            translation: 'Nitsiksi’naaki?',
            assetPath: "vcabassets/Food & Drinks/Audio/63- I'm Thirsty.wav",
            imageUrl:
                "assets/vcabassets/Food & Drinks/webp/33.-I'm-Thirsty.webp",
          ),
          VocabularyItem(
            english: 'Salad',
            phonics: 'SOO YOO BOO TSEE WAA SIN',
            translation: 'Soyoopoksowahsin',
            assetPath: 'vcabassets/Food & Drinks/Audio/64- Salad.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/34.-Salad.webp',
          ),
          VocabularyItem(
            english: 'Rice',
            phonics: 'AA SS KSEE NAA KNEE KIM',
            translation: 'Aisskssiinainikimm',
            assetPath: 'vcabassets/Food & Drinks/Audio/65- Rice.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/35.-Rice.webp',
          ),
          VocabularyItem(
            english: 'Hamburger',
            phonics: 'BEE KAA CUE KSEE SUC GOO',
            translation: 'Pikkiaakio’kssako',
            assetPath: 'vcabassets/Food & Drinks/Audio/66- Hamburgar.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/36.-Hamburger.webp',
          ),
          VocabularyItem(
            english: 'Bottle',
            phonics: 'SAA GOO COO COO TOY SS GOO',
            translation: 'Saakototoissko',
            assetPath: 'vcabassets/Food & Drinks/Audio/67- Bottle.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/37.-Bottle.webp',
          ),
          VocabularyItem(
            english: 'Plate',
            phonics: 'EE TAA SUES TOO BA',
            translation: 'Itaisoihtopa',
            assetPath: 'vcabassets/Food & Drinks/Audio/68- Plate.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/38.-Plate.webp',
          ),
          VocabularyItem(
            english: 'Fork',
            phonics: 'EEH TOY YOU BA',
            translation: 'Iihtaooyo’p',
            assetPath: 'vcabassets/Food & Drinks/Audio/69- Fork.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/39.-Fork.webp',
          ),
          VocabularyItem(
            english: 'Knife',
            phonics: 'ISS TOO ONE',
            translation: 'Isttoan',
            assetPath: 'vcabassets/Food & Drinks/Audio/70- Knife.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/40.-Knife.webp',
          ),
          VocabularyItem(
            english: 'Spoon',
            phonics: 'INN NOOH SOO YES',
            translation: 'Innoohsoyis',
            assetPath: 'vcabassets/Food & Drinks/Audio/71- Spoon.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/41.-Spoon.webp',
          ),
          VocabularyItem(
            english: 'Stove',
            phonics: 'BOO DAA TSEE',
            translation: 'Po’taatsis',
            assetPath: 'vcabassets/Food & Drinks/Audio/72- Stove.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/42.-Stove.webp',
          ),
          VocabularyItem(
            english: 'Fridge',
            phonics: 'EE DASS TOO TAA CUE BA',
            translation: 'Iitaisstoyihtakio’p',
            assetPath: 'vcabassets/Food & Drinks/Audio/73- Fridge.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/43.-Fridge.webp',
          ),
          VocabularyItem(
            english: 'Dishes',
            phonics: 'GOO SIS TSEE',
            translation: 'Ko’sistsi',
            assetPath: 'vcabassets/Food & Drinks/Audio/74- Dishes.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/44.-Dishes.webp',
          ),
          VocabularyItem(
            english: 'Shelf',
            phonics: 'EE TAA SOK EH TAA CUPE',
            translation: 'Iitaisokihtakio’p',
            assetPath: 'vcabassets/Food & Drinks/Audio/75- Shelf.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/45.-Shelf.webp',
          ),
          VocabularyItem(
            english: 'Cupboard',
            phonics: 'EE DAA SOK COO SOO P',
            translation: 'Iitaisokohko’so’p',
            assetPath: 'vcabassets/Food & Drinks/Audio/76- Cupboard.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/46.-Cupboards.webp',
          ),
          VocabularyItem(
            english: 'Door',
            phonics: 'GEE TSIMM',
            translation: 'Kitsimm',
            assetPath: 'vcabassets/Food & Drinks/Audio/77- Door.wav',
            imageUrl: 'assets/vcabassets/Food & Drinks/webp/47.-Door.webp',
          ),
        ],
      ),
      VocabularyCategory(
        title: "Numbers",
        phonics: "Okstaksitsi",
        translation: "Okstaksitsi",
        imageUrl: "assets/vcabassets/Numbers/Numbers_Btn.png",
        isNew: true,
        actionList: [
          VocabularyItem(
            english: 'One',
            phonics: 'KNEE TOK SS GAA',
            translation: 'Ni’tokskaa',
            assetPath: 'vcabassets/Numbers/Numbers Audio/79- One.wav',
          ),
          VocabularyItem(
            english: 'Two',
            phonics: 'NAA DOO GAA',
            translation: 'Naato’ka',
            assetPath: 'vcabassets/Numbers/Numbers Audio/80- Two.wav',
          ),
          VocabularyItem(
            english: 'Three',
            phonics: 'NEW OKK SSKAA',
            translation: 'Niookskaa',
            assetPath: 'vcabassets/Numbers/Numbers Audio/81- Three.wav',
          ),
          VocabularyItem(
            english: 'Four',
            phonics: 'KNEE SOOW',
            translation: 'Niiso',
            assetPath: 'vcabassets/Numbers/Numbers Audio/82- Four.wav',
          ),
          VocabularyItem(
            english: 'Five',
            phonics: 'KNEE SIT DOO',
            translation: 'Niisitoo',
            assetPath: 'vcabassets/Numbers/Numbers Audio/83- Five.wav',
          ),
          VocabularyItem(
            english: 'Six',
            phonics: 'NO YEE',
            translation: 'Naoo',
            assetPath: 'vcabassets/Numbers/Numbers Audio/84- Six.wav',
          ),
          VocabularyItem(
            english: 'Seven',
            phonics: 'EEH GEE TSEK GAA',
            translation: 'Ihkitsika',
            assetPath: 'vcabassets/Numbers/Numbers Audio/85- Seven.wav',
          ),
          VocabularyItem(
            english: 'Eight',
            phonics: 'NAA KNEE SOO YEE',
            translation: 'Naanisoyi',
            assetPath: 'vcabassets/Numbers/Numbers Audio/86- Eight.wav',
          ),
          VocabularyItem(
            english: 'Nine',
            phonics: 'BEE EHK SO YEE',
            translation: 'Piihksso',
            assetPath: 'vcabassets/Numbers/Numbers Audio/87- Nine.wav',
          ),
          VocabularyItem(
            english: 'Ten',
            phonics: 'GEE BOO',
            translation: 'Kiipo',
            assetPath: 'vcabassets/Numbers/Numbers Audio/88- Ten.wav',
          ),
          VocabularyItem(
            english: 'Eleven',
            phonics: 'KNEE TSEE GOO BOO DOO',
            translation: 'Ni’tsikopotto',
            assetPath: 'vcabassets/Numbers/Numbers Audio/89- Eleven.wav',
          ),
          VocabularyItem(
            english: 'Twelve',
            phonics: 'NAA TSEE GOO BOO DOO',
            translation: 'Naatsikopotto',
            assetPath: 'vcabassets/Numbers/Numbers Audio/90- Twelve.wav',
          ),
          VocabularyItem(
            english: 'Thirteen',
            phonics: 'KNEE YEE GOO BOO DOO',
            translation: 'Niiyiikopotto',
            assetPath: 'vcabassets/Numbers/Numbers Audio/91- Thirteen.wav',
          ),
          VocabularyItem(
            english: 'Fourteen',
            phonics: 'KNEE SEE GOO BOO DOO',
            translation: 'Nisiikopotto',
            assetPath: 'vcabassets/Numbers/Numbers Audio/92- Fourteen.wav',
          ),
          VocabularyItem(
            english: 'Fifteen',
            phonics: 'KNEE SIT TSEE GOO BOO DOO',
            translation: 'Niisitsikopotto',
            assetPath: 'vcabassets/Numbers/Numbers Audio/93- Fifteen.wav',
          ),
          VocabularyItem(
            english: 'Sixteen',
            phonics: 'NAY GOO BOO DOO',
            translation: 'Naaikopotto',
            assetPath: 'vcabassets/Numbers/Numbers Audio/94- Sixteen.wav',
          ),
          VocabularyItem(
            english: 'Seventeen',
            phonics: 'EEH GEE TSEK KEY GOO BOO DOO',
            translation: 'Ihkitsikikopotto',
            assetPath: 'vcabassets/Numbers/Numbers Audio/95- Seventeen.wav',
          ),
          VocabularyItem(
            english: 'Eighteen',
            phonics: 'NAA KNEE SEE GOO BOO DOO',
            translation: 'Naanisikopotto',
            assetPath: 'vcabassets/Numbers/Numbers Audio/96- Eighteen.wav',
          ),
          VocabularyItem(
            english: 'Nineteen',
            phonics: 'BEE HK SEE GOO BOO DOO',
            translation: 'Piihkssokopotto',
            assetPath: 'vcabassets/Numbers/Numbers Audio/97- Nineteen.wav',
          ),
          VocabularyItem(
            english: 'Twenty',
            phonics: 'NAA TSEE BOO',
            translation: 'Naatsippo',
            assetPath: 'vcabassets/Numbers/Numbers Audio/98- Twenty.wav',
          ),
          VocabularyItem(
            english: 'Twenty One',
            phonics: 'NAA TSEE BOO KNEE TSEE GOO BOO DOO',
            translation: 'Naatsippo Ni’tsikopotto',
            assetPath: 'vcabassets/Numbers/Numbers Audio/99- Twenty-One.wav',
          ),
          VocabularyItem(
            english: 'Twenty Two',
            phonics: 'NAA TSEE BOO NAA TSEE GOO BOO DOO',
            translation: 'Naatsippo Naatsikopotto',
            assetPath: 'vcabassets/Numbers/Numbers Audio/100- Twenty-Two.wav',
          ),
          VocabularyItem(
            english: 'Twenty Three',
            phonics: 'NAA TSEE BOO KNEE YEE GOO BOO DOO',
            translation: 'Naatsippo Niiyiikopotto',
            assetPath: 'vcabassets/Numbers/Numbers Audio/101- Twenty-Three.wav',
          ),
          VocabularyItem(
            english: 'Twenty Four',
            phonics: 'NAA TSEE BOO KNEE SEE GOO BOO DOO',
            translation: 'Naatsippo Nisiikopotto',
            assetPath: 'vcabassets/Numbers/Numbers Audio/102- Twenty-Four.wav',
          ),
          VocabularyItem(
            english: 'Twenty Five',
            phonics: 'NAA TSEE BOO KNEE SIT TSEE GOO BOO DOO',
            translation: 'Naatsippo Niisitsikopotto',
            assetPath: 'vcabassets/Numbers/Numbers Audio/103- Twenty-Five.wav',
          ),
          VocabularyItem(
            english: 'Twenty Six',
            phonics: 'NAA TSEE BOO NAY GOO BOO DOO',
            translation: 'Naatsippo Naaikopotto',
            assetPath: 'vcabassets/Numbers/Numbers Audio/104- Twenty-Six.wav',
          ),
          VocabularyItem(
            english: 'Twenty Seven',
            phonics: 'NAA TSEE BOO EEH KEE TSEK KEY GOO BOO DOO',
            translation: 'Naatsippo Ihkitsikikopotto',
            assetPath: 'vcabassets/Numbers/Numbers Audio/105- Twenty-Seven.wav',
          ),
          VocabularyItem(
            english: 'Twenty Eight',
            phonics: 'NAA TSEE BOO NAA KNEE SEE GOO BOO DOO',
            translation: 'Naatsippo Naanisikopotto',
            assetPath: 'vcabassets/Numbers/Numbers Audio/106- Twenty-Eight.wav',
          ),
          VocabularyItem(
            english: 'Twenty Nine',
            phonics: 'NAA TSEE BOO BEE HK SEE GOO BOO DOO',
            translation: 'Naatsippo Piihkssokopotto',
            assetPath: 'vcabassets/Numbers/Numbers Audio/107- Twenty-Nine.wav',
          ),
          VocabularyItem(
            english: 'Thirty',
            phonics: 'KNEE YIP BOO',
            translation: 'Niiyippo',
            assetPath: 'vcabassets/Numbers/Numbers Audio/108- Thirty.wav',
          ),
        ],
      ),
      VocabularyCategory(
        title: "Months & Dates",
        phonics: "Naato’siiksi",
        translation: "Naato’siiksi",
        imageUrl: "assets/vcabassets/Months & Dates/Months_Btn.png",
        isNew: true,
        actionList: [
          VocabularyItem(
            english: 'Months',
            phonics: 'NAA TOO SEE KSEE',
            translation: 'Naato’siiksi',
            assetPath: 'vcabassets/Months & Dates/Audio Months/109- Months.wav',
          ),
          VocabularyItem(
            english: 'January',
            phonics: 'OOM AH KSEE KEY SUMM',
            translation: 'Omahksiki’somm',
            assetPath:
                'vcabassets/Months & Dates/Audio Months/110- January.wav',
          ),
          VocabularyItem(
            english: 'February',
            phonics: 'BEE TAA KEY SUMM',
            translation: 'Piitaiki’somm',
            assetPath:
                'vcabassets/Months & Dates/Audio Months/111- February.wav',
          ),
          VocabularyItem(
            english: 'March',
            phonics: 'SAA AA KEY SUMM',
            translation: 'Sa’aiki’somm',
            assetPath: 'vcabassets/Months & Dates/Audio Months/112- March.wav',
          ),
          VocabularyItem(
            english: 'April',
            phonics: 'MUTES YEK KAPEE SAA KEY SUMM',
            translation: 'Matsiyikkapisaiki’somm',
            assetPath: 'vcabassets/Months & Dates/Audio Months/113- April.wav',
          ),
          VocabularyItem(
            english: 'May',
            phonics: 'AA BEE TSEE KEY TSAA TOO SEE',
            translation: 'Aapistsisskitsaato’s',
            assetPath: 'vcabassets/Months & Dates/Audio Months/114- May.wav',
          ),
          VocabularyItem(
            english: 'June',
            phonics: 'EE TOE TSEE SUM SOOT AA',
            translation: 'Ito’tsisamssootaa',
            assetPath: 'vcabassets/Months & Dates/Audio Months/115- June.wav',
          ),
          VocabularyItem(
            english: 'July',
            phonics: 'OO KOO NO KEYS OTSET TSEE BEE',
            translation: 'Okonokistsi otsitsipi',
            assetPath: 'vcabassets/Months & Dates/Audio Months/116- July.wav',
          ),
          VocabularyItem(
            english: 'August',
            phonics: 'PAAK KEE PES OTSET TSEE BEE',
            translation: 'Pakkii’pitsi otsitsipi',
            assetPath: 'vcabassets/Months & Dates/Audio Months/117- August.wav',
          ),
          VocabularyItem(
            english: 'September',
            phonics: 'AA WAA GAA SEE KEY SUM',
            translation: 'Awakaasiiki’somm',
            assetPath:
                'vcabassets/Months & Dates/Audio Months/118- September.wav',
          ),
          VocabularyItem(
            english: 'October',
            phonics: 'MOO GAA TOO SEE',
            translation: 'Mo’kaato’s',
            assetPath:
                'vcabassets/Months & Dates/Audio Months/119- October.wav',
          ),
          VocabularyItem(
            english: 'November',
            phonics: 'EE TOET SSTU YEE',
            translation: 'Iitao’tsstoyi',
            assetPath:
                'vcabassets/Months & Dates/Audio Months/120- November.wav',
          ),
          VocabularyItem(
            english: 'December',
            phonics: 'IS STA TOO SEE',
            translation: 'Isstaaato’s',
            assetPath:
                'vcabassets/Months & Dates/Audio Months/121- December.wav',
          ),
          VocabularyItem(
            english: 'Days of the Week',
            phonics: 'KSEE TSEE GOO TSE',
            translation: 'Ksistsikoiksi',
            assetPath:
                'vcabassets/Months & Dates/Audio Months/122- Days Of The Week.wav',
          ),
          VocabularyItem(
            english: 'Sunday',
            phonics: 'NAA TOO YEE KSEE TSE GOO',
            translation: 'Naatoyiksistsiko',
            assetPath: 'vcabassets/Months & Dates/Audio Months/123- Sunday.wav',
          ),
          VocabularyItem(
            english: 'Monday',
            phonics: 'IS SEE GAA TOO YEE KSEE TSE GOO',
            translation: 'Issikatoyiiksistsiko',
            assetPath: 'vcabassets/Months & Dates/Audio Months/124- Monday.wav',
          ),
          VocabularyItem(
            english: 'Tuesday',
            phonics: 'IT TSEE NAA KSEE TSE GOO',
            translation: 'Isttsinaiksistsiko',
            assetPath:
                'vcabassets/Months & Dates/Audio Months/125- Tuesday.wav',
          ),
          VocabularyItem(
            english: 'Wednesday',
            phonics: 'EE GAA TAT TSEE NOP A',
            translation: 'Iikaitaisstsinao’p',
            assetPath:
                'vcabassets/Months & Dates/Audio Months/126- Wednesday.wav',
          ),
          VocabularyItem(
            english: 'Thursday',
            phonics: 'NAA MEET SEE TSE GOO',
            translation: 'Naamiksistsiko',
            assetPath:
                'vcabassets/Months & Dates/Audio Months/127- Thursday.wav',
          ),
          VocabularyItem(
            english: 'Friday',
            phonics: 'EE NAK OH BOOM MAA KSEE TSE GOO',
            translation: 'I’nakohpommaiksistsiko',
            assetPath: 'vcabassets/Months & Dates/Audio Months/128- Friday.wav',
          ),
          VocabularyItem(
            english: 'Saturday',
            phonics: 'BOOM MAA KSEE TSE GOO',
            translation: 'Pommaiksistsiko',
            assetPath:
                'vcabassets/Months & Dates/Audio Months/129- Saturday.wav',
          ),
          VocabularyItem(
            english: 'Happy Birthday',
            phonics: 'EE TAA MEET SEE TSE GOO MET',
            translation: 'I’taamiksistsikomit',
            assetPath:
                'vcabassets/Months & Dates/Audio Months/130- Happy Birthday.wav',
          ),
          VocabularyItem(
            english: 'Happy New Year',
            phonics: 'EE TAA MEE MANN SSTU YIT',
            translation: 'I’taamimaansstoyi',
            assetPath:
                'vcabassets/Months & Dates/Audio Months/131- Happy New Year.wav',
          ),
          VocabularyItem(
            english: 'Happy Easter',
            phonics: 'EE TAA OMM GAA TOO YEE KSEE TSE GOO',
            translation: 'I’taamimatomahkatoyiksistsiko',
            assetPath:
                'vcabassets/Months & Dates/Audio Months/132- Happy Easter.wav',
          ),
          VocabularyItem(
            english: 'Merry Christmas',
            phonics: 'EE TAA OMM GAA TOO YEE KSEE TSE GOO',
            translation: 'I’taamomahkatoyiksistsiko',
            assetPath:
                'vcabassets/Months & Dates/Audio Months/133- Merry Christmas.wav',
          ),
          VocabularyItem(
            english: 'Dates',
            phonics: 'TSA AANEST TSO KNEE',
            translation: 'Tsa aanistsooni?',
            assetPath: 'vcabassets/Months & Dates/Audio Months/134- Dates.wav',
          ),
          VocabularyItem(
            english: 'First',
            phonics: 'AA TOKS GON KNEE',
            translation: 'A’toksooni',
            assetPath: 'vcabassets/Months & Dates/Audio Months/135- First.wav',
          ),
          VocabularyItem(
            english: 'Second',
            phonics: 'AA STOK CUE KNEE',
            translation: 'A’stokooni',
            assetPath: 'vcabassets/Months & Dates/Audio Months/136- Second.wav',
          ),
          VocabularyItem(
            english: 'Third',
            phonics: 'AA YOOKS GON KNEE',
            translation: 'A’yooksooni',
            assetPath: 'vcabassets/Months & Dates/Audio Months/137- Third.wav',
          ),
          VocabularyItem(
            english: 'Fourth',
            phonics: 'AA SOO KNEE',
            translation: 'A’sooni',
            assetPath: 'vcabassets/Months & Dates/Audio Months/138- Fourth.wav',
          ),
          VocabularyItem(
            english: 'Fifth',
            phonics: 'AA SIT OO KNEE',
            translation: 'A’sitooni',
            assetPath: 'vcabassets/Months & Dates/Audio Months/139- Fifth.wav',
          ),
          VocabularyItem(
            english: 'Sixth',
            phonics: 'OO KNEE',
            translation: 'O’onii',
            assetPath: 'vcabassets/Months & Dates/Audio Months/140- Sixth.wav',
          ),
          VocabularyItem(
            english: 'Seventh',
            phonics: 'AA KEE TSEE CUE KNEE',
            translation: 'A’ihkitsikoiooni',
            assetPath:
                'vcabassets/Months & Dates/Audio Months/141- Seventh.wav',
          ),
          VocabularyItem(
            english: 'Eighth',
            phonics: 'I YAA KNEE SOO KNEE',
            translation: 'I’ yaaniisooni',
            assetPath: 'vcabassets/Months & Dates/Audio Months/142- Eighth.wav',
          ),
          VocabularyItem(
            english: 'Ninth',
            phonics: 'AA BEEHK SOO KNEE',
            translation: 'A’ piihksooni',
            assetPath: 'vcabassets/Months & Dates/Audio Months/143- Ninth.wav',
          ),
          VocabularyItem(
            english: 'Tenth',
            phonics: 'AA BOO KNEE',
            translation: 'A’pooni',
            assetPath: 'vcabassets/Months & Dates/Audio Months/144- Tenth.wav',
          ),
        ],
      ),
      VocabularyCategory(
        title: "Colors",
        phonics: "Mia’nistsinaattsitsi",
        translation: "Mia’nistsinaattsitsi",
        imageUrl: "assets/vcabassets/Colors/Colors_Btn.png",
        isNew: true,
        actionList: [
          VocabularyItem(
            english: 'Red',
            phonics: 'MOW KSEE NUT TSEE',
            translation: 'Moahksinaattsi',
            assetPath: 'vcabassets/Colors/Audio Colors/146- Red.wav',
            color: Color(0xffe62e24),
          ),
          VocabularyItem(
            english: 'Blue',
            phonics: 'UT KSOO NUT TSEE',
            translation: 'Otsskoinaattsi',
            assetPath: 'vcabassets/Colors/Audio Colors/147- Blue.wav',
            color: Color(0xff2951cd),
          ),
          VocabularyItem(
            english: 'Yellow',
            phonics: 'OOT COIN NUT TSEE',
            translation: 'Otahkoinaattsi',
            assetPath: 'vcabassets/Colors/Audio Colors/148- Yellow.wav',
            color: Color(0xfff7d933),
          ),
          VocabularyItem(
            english: 'Black',
            phonics: 'SEE KSEE NUT TSEE',
            translation: 'Siksinaattsi',
            assetPath: 'vcabassets/Colors/Audio Colors/149- Black.wav',
            color: Color(0xff000000),
          ),
          VocabularyItem(
            english: 'White',
            phonics: 'KSEK KSEE NUT TSEE',
            translation: 'Ksikksinaattsi',
            assetPath: 'vcabassets/Colors/Audio Colors/150- White.wav',
            color: Color(0xffefebea),
          ),
          VocabularyItem(
            english: 'Purple',
            phonics: 'GOO MOO NOO NUT TSEE',
            translation: 'Komononaattsi',
            assetPath: 'vcabassets/Colors/Audio Colors/151- Purple.wav',
            color: Color(0xff82338c),
          ),
          VocabularyItem(
            english: 'Pink',
            phonics: 'EE KEY NUT TSEE',
            translation: 'I’kinaattsi',
            assetPath: 'vcabassets/Colors/Audio Colors/152- Pink.wav',
            color: Color(0xfffaa2a8),
          ),
          VocabularyItem(
            english: 'Brown',
            phonics: 'AA BOO YEE NUT TSEE',
            translation: 'Apoyinaattsi',
            assetPath: 'vcabassets/Colors/Audio Colors/153- Brown.wav',
            color: Color(0xff943617),
          ),
          VocabularyItem(
            english: 'Orange',
            phonics: 'OOT COIN NUT TSEE',
            translation: 'Aotahkoinaattsi',
            assetPath: 'vcabassets/Colors/Audio Colors/154- Orange.wav',
            color: Color(0xffdc7618),
          ),
          VocabularyItem(
            english: 'Green',
            phonics: 'SAS KSEE MOO GOO NUT TSEE',
            translation: 'Saissksiimokonaattsi',
            assetPath: 'vcabassets/Colors/Audio Colors/155- Green.wav',
            color: Color(0xff069614),
          ),
        ],
      ),
      VocabularyCategory(
        title: "Animals",
        phonics: "Mia’nistsipi’kssiiksi",
        translation: "Mia’nistsipi’kssiiksi",
        imageUrl: "assets/vcabassets/Animals/Animals_Btn.png",
        isNew: true,
        actionList: [
          VocabularyItem(
            english: 'Animals',
            phonics: 'MEAA NEST TSEE BEEK SEE',
            translation: 'Mia’nistsipi’kssiiksi',
            assetPath: 'vcabassets/Animals/Audio Animals/156- Animals.wav',
            imageUrl: 'assets/vcabassets/Animals/webp/1.-Animals.webp',
          ),
          VocabularyItem(
            english: 'Dog',
            phonics: 'EE MEE DAA',
            translation: 'Imitaa',
            assetPath: 'vcabassets/Animals/Audio Animals/157- Dog.wav',
            imageUrl: 'assets/vcabassets/Animals/webp/2.-Dog.webp',
          ),
          VocabularyItem(
            english: 'Cat',
            phonics: 'BOOS',
            translation: 'Poos',
            assetPath: 'vcabassets/Animals/Audio Animals/158- Cat.wav',
            imageUrl: 'assets/vcabassets/Animals/webp/3.-Cat.webp',
          ),
          VocabularyItem(
            english: 'Bear',
            phonics: 'GAA YOU',
            translation: 'Kiaayo',
            assetPath: 'vcabassets/Animals/Audio Animals/159- Bear.wav',
            imageUrl: 'assets/vcabassets/Animals/webp/4.-Bear.webp',
          ),
          VocabularyItem(
            english: 'Buffalo',
            phonics: 'EE KNEE',
            translation: 'Inii',
            assetPath: 'vcabassets/Animals/Audio Animals/160- Buffalo.wav',
            imageUrl: 'assets/vcabassets/Animals/webp/5.-Buffalo.webp',
          ),
          VocabularyItem(
            english: 'Horse',
            phonics: 'BOO NOO GOO MEE DAA',
            translation: 'Ponokaomitaa',
            assetPath: 'vcabassets/Animals/Audio Animals/161- Horse.wav',
            imageUrl: 'assets/vcabassets/Animals/webp/6.-Horse.webp',
          ),
          VocabularyItem(
            english: 'Eagle',
            phonics: 'BEE DAA',
            translation: 'Piitaa',
            assetPath: 'vcabassets/Animals/Audio Animals/162- Eagle.wav',
            imageUrl: 'assets/vcabassets/Animals/webp/7.-Eagle.webp',
          ),
          VocabularyItem(
            english: 'Owl',
            phonics: 'SEE BESS DOO',
            translation: 'Sipisttoo',
            assetPath: 'vcabassets/Animals/Audio Animals/163- Owl.wav',
            imageUrl: 'assets/vcabassets/Animals/webp/8.-Owl.webp',
          ),
          VocabularyItem(
            english: 'Fish',
            phonics: 'MAA MEE',
            translation: 'Mamii',
            assetPath: 'vcabassets/Animals/Audio Animals/164- Fish.wav',
            imageUrl: 'assets/vcabassets/Animals/webp/9.-Fish.webp',
          ),
          VocabularyItem(
            english: 'Cow',
            phonics: 'AA BOT SKE NAA',
            translation: 'Aapotskina',
            assetPath: 'vcabassets/Animals/Audio Animals/165- Cow.wav',
            imageUrl: 'assets/vcabassets/Animals/webp/10.-Cow.webp',
          ),
          VocabularyItem(
            english: 'Pig',
            phonics: 'AA KSEE KNEE',
            translation: 'Aiksini',
            assetPath: 'vcabassets/Animals/Audio Animals/166- Pig.wav',
            imageUrl: 'assets/vcabassets/Animals/webp/11.-Pig.webp',
          ),
          VocabularyItem(
            english: 'Fox',
            phonics: 'SEE NOO BAA',
            translation: 'Sinopaa',
            assetPath: 'vcabassets/Animals/Audio Animals/167- Fox.wav',
            imageUrl: 'assets/vcabassets/Animals/webp/12.-Fox.webp',
          ),
          VocabularyItem(
            english: 'Frog',
            phonics: 'MAA TSEE YIK GAA BEE SAA',
            translation: 'Matsiyikkapisaa',
            assetPath: 'vcabassets/Animals/Audio Animals/168- Frog.wav',
            imageUrl: 'assets/vcabassets/Animals/webp/13.-Frog.webp',
          ),
          VocabularyItem(
            english: 'Sheep',
            phonics: 'EEM AAH GEEH NAA',
            translation: 'Iimahkihkinaa',
            assetPath: 'vcabassets/Animals/Audio Animals/169- Sheep.wav',
            imageUrl: 'assets/vcabassets/Animals/webp/14.-Sheep.webp',
          ),
          VocabularyItem(
            english: 'Mouse',
            phonics: 'GAA NESS GEE NAA',
            translation: 'Kaanaisskiinaa',
            assetPath: 'vcabassets/Animals/Audio Animals/170- Mouse.wav',
            imageUrl: 'assets/vcabassets/Animals/webp/15.-Mouse.webp',
          ),
          VocabularyItem(
            english: 'Elk',
            phonics: 'BOO NOO GAA',
            translation: 'Ponok’a',
            assetPath: 'vcabassets/Animals/Audio Animals/171- Elk.wav',
            imageUrl: 'assets/vcabassets/Animals/webp/16.-Elk.webp',
          ),
          VocabularyItem(
            english: 'Moose',
            phonics: 'SIC IH TSEE SOO',
            translation: 'Sikihtsisoo',
            assetPath: 'vcabassets/Animals/Audio Animals/172- Moose.wav',
            imageUrl: 'assets/vcabassets/Animals/webp/17.-Moose.webp',
          ),
        ],
      ),
      VocabularyCategory(
        title: "Direction",
        phonics: "Ohtssapoo",
        translation: "Ohtssapoo",
        imageUrl: "assets/vcabassets/Directions/Directions_Btn.png",
        isNew: true,
        actionList: [
          VocabularyItem(
            english: 'How do I get to…?',
            phonics: 'TSAA NEE TAA ANESTS TOO TOO BAA',
            translation: 'Tsa nitakanistsitotopa?',
            assetPath:
                'vcabassets/Directions/Audio Directions/173- How Do I get To.wav',
          ),
          VocabularyItem(
            english: 'Turn left',
            phonics: 'EE YAA KSEE SOOT AA GOT',
            translation: 'Iiyaksisotakot',
            assetPath:
                'vcabassets/Directions/Audio Directions/174- Turn Left.wav',
          ),
          VocabularyItem(
            english: 'Turn right',
            phonics: 'KNEE TOO TSOO TAA GOT',
            translation: 'Niitotsotakot',
            assetPath:
                'vcabassets/Directions/Audio Directions/175- Turn Right.wav',
          ),
          VocabularyItem(
            english: 'Go straight',
            phonics: 'OO GAA MOO TOO TAA',
            translation: 'Okamo’tota',
            assetPath:
                'vcabassets/Directions/Audio Directions/176- Go Straight.wav',
          ),
          VocabularyItem(
            english: 'Turn around',
            phonics: 'OO DAA GOT',
            translation: 'Ootakota',
            assetPath:
                'vcabassets/Directions/Audio Directions/177- Turn Around.wav',
          ),
          VocabularyItem(
            english: 'In front of',
            phonics: 'IS SOOH TSEE',
            translation: 'Issohtsi',
            assetPath:
                'vcabassets/Directions/Audio Directions/178- In front of.wav',
          ),
          VocabularyItem(
            english: 'Behind',
            phonics: 'AA BAA TOOH TSEE',
            translation: 'Aapatohtsi',
            assetPath: 'vcabassets/Directions/Audio Directions/179- Behind.wav',
          ),
          VocabularyItem(
            english: 'Next to',
            phonics: 'EE BOO KEE BOO YEE',
            translation: 'Ipookipoyii',
            assetPath:
                'vcabassets/Directions/Audio Directions/180- Next To.wav',
          ),
          VocabularyItem(
            english: 'On the corner',
            phonics: 'OO MEE GOO KEE',
            translation: 'Omikoki',
            assetPath:
                'vcabassets/Directions/Audio Directions/181- On the corner.wav',
          ),
          VocabularyItem(
            english: 'Here',
            phonics: 'AA MOO',
            translation: 'Amo',
            assetPath: 'vcabassets/Directions/Audio Directions/182- Here.wav',
          ),
          VocabularyItem(
            english: 'There',
            phonics: 'OO MEE',
            translation: 'Omi',
            assetPath: 'vcabassets/Directions/Audio Directions/183- There.wav',
          ),
          VocabularyItem(
            english: 'Far away',
            phonics: 'PEW WOOH TSEE',
            translation: 'Piowahtsi',
            assetPath:
                'vcabassets/Directions/Audio Directions/184- Far Away.wav',
          ),
          VocabularyItem(
            english: 'North',
            phonics: 'AA BUTT OH SOOT SEE',
            translation: 'Apatohsoohtsi',
            assetPath: 'vcabassets/Directions/Audio Directions/185- North.wav',
          ),
          VocabularyItem(
            english: 'South',
            phonics: 'AAM SSKAA BOO TSEE',
            translation: 'Aamsskaapoohtsi',
            assetPath: 'vcabassets/Directions/Audio Directions/186- South.wav',
          ),
          VocabularyItem(
            english: 'East',
            phonics: 'BEN NAA BOO TSEE',
            translation: 'Pinaapoohtsi',
            assetPath: 'vcabassets/Directions/Audio Directions/187- East.wav',
          ),
          VocabularyItem(
            english: 'West',
            phonics: 'AA MEE TOO TSEE',
            translation: 'Aami’toohtsi',
            assetPath: 'vcabassets/Directions/Audio Directions/188- West.wav',
          ),
        ],
      ),
    ];
  }

  @override
  Future<List<NaapiStory>> getNaapiStories() async {
    final String jsonString = await rootBundle.loadString(
      'assets/jsons/naapi_stories.json',
    );
    // Decode JSON
    final response = json.decode(jsonString);
    return (response as List).map((naapiStory)=>NaapiStoryJson.fromJson(naapiStory).toDomain()).toList();
  }

  @override
  Future<NaapiStory> getNaapiStoryById({required String id}) async {
    List<NaapiStory> stories=await getNaapiStories();
    return stories.firstWhere((story)=>story.id.toString()==id);
  }
}
