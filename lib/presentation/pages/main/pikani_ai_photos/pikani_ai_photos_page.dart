import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikani/core/utils/constants.dart';
import 'package:pikani/domain/entities/ai_photo.dart';
import 'package:pikani/presentation/widgets/custom_app_bar.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'pikani_ai_photos_cubit.dart';
import 'pikani_ai_photos_initial_params.dart';
import 'pikani_ai_photos_state.dart';

class PikaniAiPhotosPage extends StatefulWidget {
  final PikaniAiPhotosCubit cubit;
  final PikaniAiPhotosInitialParams initialParams;

  static const path = '/pikani_ai_photos';

  const PikaniAiPhotosPage({
    Key? key,
    required this.cubit,
    required this.initialParams,
  }) : super(key: key);

  @override
  State<PikaniAiPhotosPage> createState() => _PikaniAiPhotosState();
}

class _PikaniAiPhotosState extends State<PikaniAiPhotosPage> {
  PikaniAiPhotosCubit get cubit => widget.cubit;

  @override
  void initState() {
    super.initState();
    cubit.navigator.context = context;
    cubit.onInit(widget.initialParams);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PikaniAiPhotosCubit, PikaniAiPhotosState>(
      bloc: cubit,
      builder: (context, state) {
        return Scaffold(
          appBar: CustomAppBar(
            title: "Piikani Ai Photos",
            subTitle: "Photos Courtesy of the Glenbow Archives",
          ),
          body: Skeletonizer(
            enabled: state.loading,
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(
                horizontal: kScreenPadding,
              ).copyWith(bottom: kScreenPadding),
              itemCount: state.loading ? 10 : state.aiPhotos.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 0.5,
              ),
              itemBuilder: (context, index) {
                AIPhoto aiPhoto =
                    state.loading ? AIPhoto.loading() : state.aiPhotos[index];
                return InkWell(
                  onTap: () {
                    cubit.imageAction.call(aiPhoto);
                  },
                  child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      // color: Colors.grey,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child:
                          state.loading
                              ? SizedBox()
                              : Image.asset(
                                aiPhoto.image!,
                                alignment: Alignment.center,
                                fit:
                                    // aiPhoto.isLandscape == true
                                    //     ? BoxFit.contain
                                        BoxFit.cover,
                              ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
