import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikani/core/extensions/theme_extension.dart';
import 'package:pikani/core/utils/constants.dart';
import 'package:pikani/presentation/widgets/app_background.dart';
import 'package:pikani/presentation/widgets/custom_app_bar.dart';
import '../../../../domain/entities/naapi_story.dart';
import 'piikani_stories_cubit.dart';
import 'piikani_stories_initial_params.dart';
import 'piikani_stories_state.dart';

class PiikaniStoriesPage extends StatefulWidget {
  final PiikaniStoriesCubit cubit;
  final PiikaniStoriesInitialParams initialParams;

  static const path = '/piikani_stories';

  const PiikaniStoriesPage({
    Key? key,
    required this.cubit,
    required this.initialParams,
  }) : super(key: key);

  @override
  State<PiikaniStoriesPage> createState() => _PiikaniStoriesState();
}

class _PiikaniStoriesState extends State<PiikaniStoriesPage> {
  PiikaniStoriesCubit get cubit => widget.cubit;

  @override
  void initState() {
    super.initState();
    cubit.navigator.context = context;
    cubit.onInit(widget.initialParams);
  }

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: BlocBuilder<PiikaniStoriesCubit, PiikaniStoriesState>(
        bloc: cubit,
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            appBar: CustomAppBar(
              title: "Naapi Stories",
              subTitle: "Naapiwa Ikaitapiitsiniki",
            ),
            body: SafeArea(
              child:
                  state.loading
                      ? Center(child: CircularProgressIndicator.adaptive())
                      : Padding(
                        padding: const EdgeInsets.all(kScreenPadding),
                        child: Column(
                          spacing: 20,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _imageSection(naapiStory: state.nappiStories.first),
                            _imageSection(naapiStory: state.nappiStories.last),
                          ],
                        ),
                      ),
            ),
          );
        },
      ),
    );
  }

  Widget _imageSection({required NaapiStory naapiStory}) {
    return InkWell(
      onTap: () {
        cubit.storyDetail(naapiStory);
      },
      child: Image.asset(
        naapiStory.image!,
        width: context.sw,
        fit: BoxFit.cover,
      ),
    );
  }
}
