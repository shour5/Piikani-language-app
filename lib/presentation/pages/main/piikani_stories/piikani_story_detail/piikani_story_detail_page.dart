import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikani/core/extensions/theme_extension.dart';
import 'package:pikani/presentation/pages/main/piikani_stories/piikani_story_detail/widgets/story_tile.dart';
import 'package:pikani/presentation/widgets/app_background.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../sign_language/sign_language_short_phrases/widgets/short_phrase_phonic_section.dart';
import '../../sign_language/sign_language_short_phrases/widgets/short_phrase_pikani_section.dart';
import 'piikani_story_detail_cubit.dart';
import 'piikani_story_detail_initial_params.dart';
import 'piikani_story_detail_state.dart';

class PiikaniStoryDetailPage extends StatefulWidget {
  final PiikaniStoryDetailCubit cubit;
  final PiikaniStoryDetailInitialParams initialParams;

  static const path = '/piikani_story_detail';

  const PiikaniStoryDetailPage({
    Key? key,
    required this.cubit,
    required this.initialParams,
  }) : super(key: key);

  @override
  State<PiikaniStoryDetailPage> createState() => _PiikaniStoryDetailState();
}

class _PiikaniStoryDetailState extends State<PiikaniStoryDetailPage> {
  PiikaniStoryDetailCubit get cubit => widget.cubit;

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
      child: BlocBuilder<PiikaniStoryDetailCubit, PiikaniStoryDetailState>(
        bloc: cubit,
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            appBar: CustomAppBar(
              title: "${state.naapiStory.title}",
              subTitle: "Narrated by Shirley Crowshoe",
            ),
            body:
                state.loading
                    ? Center(child: CircularProgressIndicator())
                    : Column(
                      children: [
                        Image.asset(
                          state.selectedStory!.image!,
                          height: 300,
                          width: context.sw,
                          fit: BoxFit.cover,
                        ),
                        ShortPhrasePhonicSection(
                          phonic: state.selectedStory?.phonics ?? "N/A",
                          onTap: cubit.replayAudio,
                        ),
                        ShortPhrasePikaniSection(
                          piikani: state.selectedStory?.pikani ?? "N/A",
                          onTap: cubit.replayAudio,
                        ),
                        SizedBox(height: 20),
                        Expanded(
                          child: ListView.builder(
                            itemCount: cubit.stories.length,
                            itemBuilder: (context, index) {
                              final story = cubit.stories[index];
                              return StoryTile(
                                isSelected: state.selectedStory == story,
                                story: story,
                                onTap: cubit.storyTap,
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
