import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikani/core/extensions/theme_extension.dart';
import 'package:pikani/core/utils/assets.dart';
import 'package:pikani/core/utils/constants.dart';
import 'package:pikani/core/utils/style.dart';
import 'package:pikani/presentation/widgets/app_background.dart';
import '../../../../widgets/custom_app_bar.dart';
import 'sign_language_info_cubit.dart';
import 'sign_language_info_initial_params.dart';
import 'sign_language_info_state.dart';

class SignLanguageInfoPage extends StatefulWidget {
  final SignLanguageInfoCubit cubit;
  final SignLanguageInfoInitialParams initialParams;

  static const path = '/sign_language_info';

  const SignLanguageInfoPage({
    Key? key,
    required this.cubit,
    required this.initialParams,
  }) : super(key: key);

  @override
  State<SignLanguageInfoPage> createState() => _SignLanguageInfoState();
}

class _SignLanguageInfoState extends State<SignLanguageInfoPage> {
  SignLanguageInfoCubit get cubit => widget.cubit;

  @override
  void initState() {
    super.initState();
    cubit.navigator.context = context;
    cubit.onInit(widget.initialParams);
  }

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: BlocBuilder<SignLanguageInfoCubit, SignLanguageInfoState>(
        bloc: cubit,
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            appBar: CustomAppBar(
              title: "Sign Language",
              subTitle: "Introduction",
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(kScreenPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 20,
                  children: [
                    Text(
                      "A’psstoosini (AUP STOO SIN NEE) - Sign Language",
                      style: context.textTheme.titleMedium?.copyWith(
                        letterSpacing: 0.8,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "The ancient use of gestures as a medium of expression most likely arose out of the need for communication over vast distances, such as that afforded by the expansive environment of the Great Plains region. ",
                      style: AppStyle.bodyDescriptionStyle(context),
                    ),
                    _womenImage(),
                    Text(
                      "Sign languages, or the use of gestures for communication purposes reached its highest development among Indigenous people of the Plains. A system of intertribal communication by ideographic gestures made with the hands.\n\nSign language was first noted by explores as early as 1535. Utilized by every Plains Indigenous tribes from North Saskatchewan River to Mexico.\n\nSign language was not developed in area outside the Plains. In fact, the Plains Indigenous tribes perfected the use of sign language for a variety of reasons including the fact that they were nomadic people able to travel all over their environment on horseback therefore in constant friendly or hostile contacts with numerous other languages groups. In order to communicate with each other Indigenous groups evolved a highly elaborated use of gestures speech. ",
                      style: AppStyle.bodyDescriptionStyle(context),
                    ),
                    const SizedBox(height: 40,),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _womenImage() {
    return Column(
      spacing: 4,
      children: [
        Image.asset(Assets.signLanguageInfo, fit: BoxFit.fill),
        Text(
          "Winold Reiss (1886 – 1953). Woman and Man Sign Talking, ca. 1929. winoldreiss.org",
          style: context.textTheme.bodyMedium,
        ),
      ],
    );
  }
}
