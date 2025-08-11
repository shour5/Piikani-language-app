import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikani/core/extensions/theme_extension.dart';
import 'package:pikani/domain/entities/vocabulry_category.dart';
import 'package:pikani/presentation/widgets/app_background.dart';
import 'package:pikani/presentation/widgets/custom_app_bar.dart';
import 'package:pikani/presentation/widgets/refresh_button.dart';
import 'vocabulary_category_details_cubit.dart';
import 'vocabulary_category_details_initial_params.dart';
import 'vocabulary_category_details_state.dart';

class VocabularyCategoryDetailsPage extends StatefulWidget {
  final VocabularyCategoryDetailsCubit cubit;
  final VocabularyCategoryDetailsInitialParams initialParams;

  static const path = '/vocabulary_category_details';

  const VocabularyCategoryDetailsPage({
    Key? key,
    required this.cubit,
    required this.initialParams,
  }) : super(key: key);

  @override
  State<VocabularyCategoryDetailsPage> createState() =>
      _VocabularyCategoryDetailsState();
}

class _VocabularyCategoryDetailsState
    extends State<VocabularyCategoryDetailsPage> {
  VocabularyCategoryDetailsCubit get cubit => widget.cubit;

  @override
  void initState() {
    super.initState();
    cubit.navigator.context = context;
    cubit.onInit(widget.initialParams);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AppBackground(
      child: BlocBuilder<
        VocabularyCategoryDetailsCubit,
        VocabularyCategoryDetailsState
      >(
        bloc: cubit,
        builder: (context, state) {
          return WillPopScope(
            onWillPop: () async {
              cubit.stopWav();
              return true;
            },
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: CustomAppBar(
                callback: () {
                  cubit.stopWav();
                },
                title: state.categoryDetails.title,
                subTitle:
                    state.categoryDetails.translation == ""
                        ? ""
                        : state.categoryDetails.translation,
              ),
              body: SafeArea(
                child: Column(
                  children: [
                    // Phonics
                    Container(
                      width: double.infinity,
                      height:
                          state.selectedCategoryItem.imageUrl != ""
                              ? (size.width / 1.65)
                              : (size.width / 2.5),
                      color: Colors.grey.shade200,
                      child:
                          state.selectedCategoryItem.imageUrl != ""
                              ? InkWell(
                                onTap: () {
                                  cubit.playWav(
                                    audioPath:
                                        state.selectedCategoryItem.assetPath,
                                  );
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        // height: 170,
                                        width: double.infinity,
                                        child: Stack(
                                          children: [
                                            Positioned.fill(
                                              child: Image.asset(
                                                state
                                                        .selectedCategoryItem
                                                        .imageUrl ??
                                                    "",
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Positioned(
                                              top: 10,
                                              left: 10,
                                              child: RefreshButton(
                                                onTap: () {
                                                  cubit.playWav(
                                                    audioPath:
                                                        state
                                                            .selectedCategoryItem
                                                            .assetPath,
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    // SizedBox(height: 8),
                                    Center(
                                      child: Container(
                                        color: Color(0xffececed),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 20,
                                            vertical: 12,
                                          ),
                                          child: Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '(Phonics)',
                                                  style: context
                                                      .textTheme
                                                      .titleMedium
                                                      ?.copyWith(
                                                        letterSpacing: 1,
                                                      ),
                                                ),
                                                Text(
                                                  state
                                                      .selectedCategoryItem
                                                      .phonics,
                                                  textAlign: TextAlign.center,
                                                  style: context
                                                      .textTheme
                                                      .titleLarge
                                                      ?.copyWith(
                                                        letterSpacing: 1,
                                                      ),
                                                ),
                                                Text(
                                                  '(Phonics)',
                                                  style: context
                                                      .textTheme
                                                      .titleMedium
                                                      ?.copyWith(
                                                        letterSpacing: 1,
                                                        color: Colors.transparent,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                              : InkWell(
                                onTap: () {
                                  cubit.playWav(
                                    audioPath:
                                        state.selectedCategoryItem.assetPath,
                                  );
                                },
                                child: Container(
                                  color:
                                      state.selectedCategoryItem.color != null
                                          ? state.selectedCategoryItem.color
                                          : null,
                                  child: Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 20,
                                            vertical: 12,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              state
                                                          .selectedCategoryItem
                                                          .imageUrl ==
                                                      ""
                                                  ? Text(
                                                    '(Phonics)',
                                                    style: context
                                                        .textTheme
                                                        .titleMedium
                                                        ?.copyWith(
                                                          letterSpacing: 1,
                                                        ),
                                                  )
                                                  : SizedBox.shrink(),
                                              Center(
                                                child: RefreshButton(
                                                  onTap: () {
                                                    cubit.playWav(
                                                      audioPath:
                                                          state
                                                              .selectedCategoryItem
                                                              .assetPath,
                                                    );
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 16),
                                        Center(
                                          child: Text(
                                            state.selectedCategoryItem.phonics,
                                            textAlign: TextAlign.center,
                                            style: context.textTheme.titleLarge
                                                ?.copyWith(
                                                  letterSpacing: 1,
                                                  color:
                                                      state
                                                                  .selectedCategoryItem
                                                                  .english ==
                                                              "Black"
                                                          ? context
                                                              .colorTheme
                                                              .surface
                                                          : context
                                                              .colorTheme
                                                              .onSurface,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                    ),
                    Container(
                      width: double.infinity,
                      color: context.colorTheme.onSecondary,
                      height: size.width / 5,
                      padding: EdgeInsets.all(6),
                      child: Center(
                        child: Text(
                          state.selectedCategoryItem.translation,
                          textAlign: TextAlign.center,
                          style: context.textTheme.titleLarge?.copyWith(
                            letterSpacing: 1,
                            color: context.colorTheme.surface,
                          ),
                        ),
                      ),
                    ),

                    // Phrase Buttons Grid
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child:
                            state.loading
                                ? const Center(child: CircularProgressIndicator())
                                : state.categoryDetails.sections.isNotEmpty
                                ? SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:
                                        state.categoryDetails.sections.map((
                                          section,
                                        ) {
                                          return Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                section.title,
                                                style:
                                                    context.textTheme.titleLarge,
                                              ),
                                              const SizedBox(height: 10),
                                              GridView.builder(
                                                shrinkWrap: true,
                                                padding: const EdgeInsets.only(
                                                  bottom: 10,
                                                ),
                                                physics:
                                                    const NeverScrollableScrollPhysics(),
                                                itemCount: section.items.length,
                                                gridDelegate:
                                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: 3,
                                                      mainAxisSpacing: 10,
                                                      crossAxisSpacing: 10,
                                                      childAspectRatio: 1.8,
                                                    ),
                                                itemBuilder: (context, index) {
                                                  VocabularyItem currentItem =
                                                      section.items[index];
                                                  bool isHighlighted =
                                                      currentItem.english ==
                                                      state
                                                          .selectedCategoryItem
                                                          .english;
                                                  return SizedBox(
                                                    height: 30,
                                                    child: ElevatedButton(
                                                      onPressed: () {
                                                        cubit.stopWav();
                                                        cubit
                                                            .updateSeletedCategoryItem(
                                                              currentItem,
                                                            );
                                                        cubit.playWav(
                                                          audioPath:
                                                              currentItem
                                                                  .assetPath,
                                                        );
                                                      },
                                                      style: ElevatedButton.styleFrom(
                                                        backgroundColor:
                                                            isHighlighted
                                                                ? context
                                                                    .colorTheme
                                                                    .tertiaryContainer
                                                                : context
                                                                    .colorTheme
                                                                    .surface,
                                                        foregroundColor:
                                                            isHighlighted
                                                                ? context
                                                                    .colorTheme
                                                                    .surface
                                                                : Colors.black,
                                                        side: const BorderSide(
                                                          color: Colors.black12,
                                                        ),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                8,
                                                              ),
                                                        ),
                                                      ),
                                                      child: Text(
                                                        currentItem.english,
                                                        textAlign:
                                                            TextAlign.center,
                                                        maxLines: 2,
                                                        style: context
                                                            .textTheme
                                                            .titleMedium
                                                            ?.copyWith(
                                                              color:
                                                                  isHighlighted
                                                                      ? context
                                                                          .colorTheme
                                                                          .surface
                                                                      : Colors
                                                                          .black,
                                                            ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                              const SizedBox(height: 20),
                                            ],
                                          );
                                        }).toList(),
                                  ),
                                )
                                : GridView.builder(
                                  itemCount:
                                      state.categoryDetails.actionList.length,
                                  padding: const EdgeInsets.only(bottom: 10),
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                        mainAxisSpacing: 10,
                                        crossAxisSpacing: 10,
                                        childAspectRatio: 1.8,
                                      ),
                                  itemBuilder: (context, index) {
                                    VocabularyItem currentItem =
                                        state.categoryDetails.actionList[index];
                                    bool isHighlighted =
                                        currentItem.english ==
                                        state.selectedCategoryItem.english;
                                    return SizedBox(
                                      height: 30,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          cubit.stopWav();
                                          cubit.updateSeletedCategoryItem(
                                            currentItem,
                                          );
                                          cubit.playWav(
                                            audioPath: currentItem.assetPath,
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              isHighlighted
                                                  ? context
                                                      .colorTheme
                                                      .tertiaryContainer
                                                  : context.colorTheme.surface,
                                          foregroundColor:
                                              isHighlighted
                                                  ? context.colorTheme.surface
                                                  : Colors.black,
                                          side: const BorderSide(
                                            color: Colors.black12,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          currentItem.english,
                                          textAlign: TextAlign.center,
                                          maxLines: 2,
                                          style: context.textTheme.titleMedium
                                              ?.copyWith(
                                                color:
                                                    isHighlighted
                                                        ? context
                                                            .colorTheme
                                                            .surface
                                                        : Colors.black,
                                              ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
