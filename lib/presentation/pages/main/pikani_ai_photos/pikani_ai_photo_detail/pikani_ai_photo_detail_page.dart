import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flip_card/controllers/flip_card_controllers.dart';
import 'package:flutter_flip_card/flipcard/flip_card.dart';
import 'package:flutter_flip_card/modal/flip_side.dart';
import 'package:pikani/core/extensions/theme_extension.dart';
import 'package:pikani/core/utils/constants.dart';
import 'package:pikani/presentation/widgets/video/video_widget.dart';
import '../../../../widgets/custom_app_bar.dart';
import 'pikani_ai_photo_detail_cubit.dart';
import 'pikani_ai_photo_detail_initial_params.dart';
import 'pikani_ai_photo_detail_state.dart';

class PikaniAiPhotoDetailPage extends StatefulWidget {
  final PikaniAiPhotoDetailCubit cubit;
  final PikaniAiPhotoDetailInitialParams initialParams;

  static const path = '/pikani_ai_photo_detail';

  const PikaniAiPhotoDetailPage({
    Key? key,
    required this.cubit,
    required this.initialParams,
  }) : super(key: key);

  @override
  State<PikaniAiPhotoDetailPage> createState() => _PikaniAiPhotoDetailState();
}

class _PikaniAiPhotoDetailState extends State<PikaniAiPhotoDetailPage> {
  PikaniAiPhotoDetailCubit get cubit => widget.cubit;
  final controller = FlipCardController();
  bool isVideoMood = true;

  @override
  void initState() {
    super.initState();
    cubit.navigator.context = context;

    cubit.onInit(widget.initialParams);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PikaniAiPhotoDetailCubit, PikaniAiPhotoDetailState>(
      bloc: cubit,
      builder: (context, state) {
        return Scaffold(
          appBar: CustomAppBar(
            title: "Piikani Ai Photos",
            subTitle: "Photos Courtesy of the Glenbow Archives",
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kScreenPadding,
            ).copyWith(bottom: kScreenPadding),
            child: Center(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  GestureDetector(
                    onHorizontalDragEnd: (details) {
                      if (details.velocity.pixelsPerSecond.dx > 0) {
                        _flipCard();
                      } else if (details.velocity.pixelsPerSecond.dx < 0) {
                        _flipCard();
                      }
                    },
                    child: FlipCard(
                      rotateSide:
                          isVideoMood ? RotateSide.right : RotateSide.left,
                      onTapFlipping: false,
                      axis: FlipAxis.vertical,
                      controller: controller,
                      frontWidget: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child:
                            state.loading
                                ? SizedBox(
                                  height: context.sh,
                                  width: context.sw,
                                )
                                : VideoWidget(
                                  videoUrl: state.aiPhoto.video!,
                                  autoPlay: true,
                                  isLandscape:
                                      (state.aiPhoto.isLandscape ?? false),
                                  height: context.sh,
                                  fit:
                                      (state.aiPhoto.isLandscape ?? false)
                                          ? BoxFit.contain
                                          : BoxFit.cover,
                                  width: context.sw,
                                ),
                      ),
                      backWidget: SizedBox(
                        height: context.sh,
                        width: context.sw,
                        child: Card(
                          elevation: 5,
                          color: context.colorTheme.surface,
                          child: Center(
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.all(kScreenPadding),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  spacing: 20,
                                  children: [
                                    Text(
                                      "${state.aiPhoto.title}",
                                      style: context.textTheme.titleLarge
                                          ?.copyWith(letterSpacing: 0.8),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      "${state.aiPhoto.description}",
                                      style: context.textTheme.bodyLarge
                                          ?.copyWith(letterSpacing: 0.8),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: IconButton(
                      onPressed: () {
                        _flipCard();
                      },
                      icon: Icon(Icons.flip),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _flipCard() {
    setState(() {
      isVideoMood = !isVideoMood;
    });
    controller.flipcard();
  }
}
