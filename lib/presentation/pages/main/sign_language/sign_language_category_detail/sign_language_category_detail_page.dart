import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikani/core/extensions/theme_extension.dart';
import 'package:pikani/core/utils/constants.dart';
import 'package:pikani/domain/entities/sign_language_category.dart';
import 'package:pikani/presentation/widgets/app_background.dart';
import 'package:pikani/presentation/widgets/custom_app_bar.dart';
import 'package:pikani/presentation/widgets/gird_view_item_button.dart';
import 'package:pikani/presentation/widgets/refresh_button.dart';
import 'package:pikani/presentation/widgets/video/video_widget.dart';
import '../sign_language_short_phrases/widgets/short_phrase_pikani_section.dart';
import 'sign_language_category_detail_cubit.dart';
import 'sign_language_category_detail_initial_params.dart';
import 'sign_language_category_detail_state.dart';

class SignLanguageCategoryDetailPage extends StatefulWidget {
  final SignLanguageCategoryDetailCubit cubit;
  final SignLanguageCategoryDetailInitialParams initialParams;

  static const path = '/sign_language_category_detail';

  const SignLanguageCategoryDetailPage({
    Key? key,
    required this.cubit,
    required this.initialParams,
  }) : super(key: key);

  @override
  State<SignLanguageCategoryDetailPage> createState() =>
      _SignLanguageCategoryDetailState();
}

class _SignLanguageCategoryDetailState
    extends State<SignLanguageCategoryDetailPage> {
  SignLanguageCategoryDetailCubit get cubit => widget.cubit;

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
        SignLanguageCategoryDetailCubit,
        SignLanguageCategoryDetailState
      >(
        bloc: cubit,
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            appBar: CustomAppBar(
              title: "Sign Language",
              subTitle: "${state.category?.name}",
            ),
            body:
                state.loading
                    ? Center(child: CircularProgressIndicator())
                    : Column(
                      spacing: 15,
                      children: [
                        if (state.selectedItem != null) ...[
                          Stack(
                            children: [
                              SizedBox(
                                height: 200,
                                width: context.sw,
                                child: VideoWidget(
                                  videoUrl: cubit.videoPath,
                                  autoPlay: false,
                                  onControllerInitialized: (controller) {
                                    cubit.setController(controller);
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
                          ShortPhrasePikaniSection(
                            piikani: "${state.selectedItem?.blackfoot}",
                            onTap: cubit.replayVideo,
                            textStyle: context.textTheme.titleLarge?.copyWith(
                              color: context.colorTheme.surface,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1,
                            ),
                          ),
                        ],
                        Expanded(
                          child: GridView.builder(
                            padding: const EdgeInsets.symmetric(
                              horizontal: kScreenPadding,
                            ).copyWith(bottom: kScreenPadding),
                            itemCount: state.category?.items.length ?? 0,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10,
                                  childAspectRatio: 1.8,
                                ),
                            itemBuilder: (context, index) {
                              SignLanguageCategoryItem? item =
                                  state.category?.items[index];
                              return GirdViewItemButton(
                                text: item?.english ?? "N/A",
                                isSelected: state.selectedItem == item,
                                onTap: () {
                                  cubit.videoIndex = index + 1;
                                  cubit.itemTapAction(item!);
                                },
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
