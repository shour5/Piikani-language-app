import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikani/core/extensions/theme_extension.dart';
import 'package:pikani/core/utils/constants.dart';
import 'package:pikani/presentation/widgets/app_background.dart';
import 'package:pikani/presentation/widgets/video/video_widget.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/refresh_button.dart';
import 'sign_language_short_phrases_cubit.dart';
import 'sign_language_short_phrases_initial_params.dart';
import 'sign_language_short_phrases_state.dart';
import 'widgets/short_phrase_phonic_section.dart';
import 'widgets/short_phrase_pikani_section.dart';
import 'widgets/short_phrase_tile.dart';

class SignLanguageShortPhrasesPage extends StatefulWidget {
  final SignLanguageShortPhrasesCubit cubit;
  final SignLanguageShortPhrasesInitialParams initialParams;

  static const path = '/sign_language_short_phrases';

  const SignLanguageShortPhrasesPage({
    Key? key,
    required this.cubit,
    required this.initialParams,
  }) : super(key: key);

  @override
  State<SignLanguageShortPhrasesPage> createState() =>
      _SignLanguageShortPhrasesState();
}

class _SignLanguageShortPhrasesState
    extends State<SignLanguageShortPhrasesPage> {
  SignLanguageShortPhrasesCubit get cubit => widget.cubit;

  @override
  void initState() {
    super.initState();
    cubit.navigator.context = context;
    cubit.onInit(widget.initialParams);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    cubit.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: BlocBuilder<
        SignLanguageShortPhrasesCubit,
        SignLanguageShortPhrasesState
      >(
        bloc: cubit,
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            appBar: CustomAppBar(
              title: "Sign Language",
              subTitle: "Signing Short Phrases",
            ),
            body: Column(
              children: [
                if(state.selectedPhrase!=null)
                ...[
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        width: context.sw,
                        child: state.selectedPhrase == null
                            ? Center(child: CircularProgressIndicator())
                            : VideoWidget(
                          autoPlay: false,
                          videoUrl: state.selectedPhrase?.videoUrl ?? "",
                          onControllerInitialized: (controller) {
                            cubit.controller = controller;
                          },
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: IgnorePointer(child: RefreshButton()),
                      ),
                    ],
                  ),
                  ShortPhrasePhonicSection(
                    phonic: state.selectedPhrase?.phonic ?? "N/A",
                    onTap: cubit.replayVideo,
                  ),
                  ShortPhrasePikaniSection(
                    piikani: state.selectedPhrase?.piikani ?? "N/A",
                    onTap: cubit.replayVideo,
                  ),
                  SizedBox(height: 20),
                ],
                Expanded(
                  child: ListView.builder(
                    itemCount: cubit.signLanguagePhrases.length,
                    padding: state.selectedPhrase==null?EdgeInsets.symmetric(vertical: kScreenPadding):null,
                    itemBuilder: (context, index) {
                      final phrase = cubit.signLanguagePhrases[index];
                      return ShortPhraseTile(
                        isSelected: state.selectedPhrase == phrase,
                        phrase: phrase,
                        onTap: cubit.onPhraseTap,
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
