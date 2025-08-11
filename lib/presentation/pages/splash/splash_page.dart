import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pikani/core/extensions/theme_extension.dart';
import 'package:pikani/core/utils/assets.dart';
import 'splash_cubit.dart';
import 'splash_initial_params.dart';

class SplashPage extends StatefulWidget {
  final SplashCubit cubit;
  final SplashInitialParams initialParams;

  static const path = '/SplashPage';

  const SplashPage({Key? key, required this.cubit, required this.initialParams})
    : super(key: key);

  @override
  State<SplashPage> createState() => _SplashState();
}

class _SplashState extends State<SplashPage> {
  SplashCubit get cubit => widget.cubit;

  @override
  void initState() {
    super.initState();
    cubit.navigator.context = context;
    cubit.onInit(widget.initialParams);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Lottie.asset(
          Assets.splashAnimation,
          fit: BoxFit.contain,
          height: context.sh,
          repeat: false,
          onLoaded: (composition) {
            final duration = composition.duration;
            Future.delayed(duration, () {
              cubit.onAnimationComplete();
            });
          },
        ),
      ),
    );
  }

}
