import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikani/core/extensions/theme_extension.dart';
import 'package:pikani/core/utils/assets.dart';
import 'package:pikani/core/utils/constants.dart';
import '../../../widgets/custom_app_bar.dart' show CustomAppBar;
import 'blackfoot_prayer_cubit.dart';
import 'blackfoot_prayer_initial_params.dart';
import 'blackfoot_prayer_state.dart';
import 'widgets/play_button.dart';

class BlackfootPrayerPage extends StatefulWidget {
  final BlackfootPrayerCubit cubit;
  final BlackfootPrayerInitialParams initialParams;

  static const path = '/blackfoot_prayer';

  const BlackfootPrayerPage({
    Key? key,
    required this.cubit,
    required this.initialParams,
  }) : super(key: key);

  @override
  State<BlackfootPrayerPage> createState() => _BlackfootPrayerState();
}

class _BlackfootPrayerState extends State<BlackfootPrayerPage> {
  BlackfootPrayerCubit get cubit => widget.cubit;

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
    return SafeArea(
      child: BlocBuilder<BlackfootPrayerCubit, BlackfootPrayerState>(
        bloc: cubit,
        builder: (context, state) {
          return Stack(
            children: [
              Positioned.fill(right: -200, top: -350, child: _eagleBg()),
              Scaffold(
                backgroundColor: Colors.transparent,
                appBar: CustomAppBar(
                  title: "Blackfoot Prayer",
                  color: Colors.transparent,
                  actions: [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: PlayButton(
                        title: state.isPlaying ? "PAUSE" : 'PLAY',
                        onTap: cubit.playAction,
                      ),
                    ),
                  ],
                ),
                body: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: kScreenPadding,
                    ).copyWith(top: kScreenPadding),
                    child: Text(
                      _prayerText,
                      style: context.textTheme.titleMedium?.copyWith(
                        letterSpacing: 0,
                        fontSize: 20
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _eagleBg() {
    int bgImageFlex = 7;
    return Column(
      children: [
        Expanded(
          flex: bgImageFlex,
          child: Container(
            decoration: BoxDecoration(
              color: context.colorTheme.surface,
              image: DecorationImage(
                image: AssetImage(Assets.eagle),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 10 - bgImageFlex,
          child: Container(color: context.colorTheme.surface),
        ),
      ],
    );
  }

  final String _prayerText = """
liyo lihtsi - aitapii -yio'p
(l yoo Eeh tsee bat taa bee you up)
Calling on you the source of life.

Kitsi - ksiksi - matsimm - ohpinnan
(Gee tsee skek ksee mut tsem oh bin naan)
We welcome and greet you.

Kimm - ato - kinaan, Nist - onna, Opo - kaa' sin (kimm aatoo kinn naan), (knee stonna) (oo boo gaa sin)
Be compassionate to us children.

Isspommkinanna ki aissamatsokinaan sookksipaitsini
Help us and guide to a good life.

Kokkinaan
(goo ggen naan)
Gives us

Misamiipaitapiyssin
(mee sum mee baa taa bee sin knee)
Long good life

Kii
(gee)
And

Komotaani
(ga moo taa knee)
Bless us with a safe life
  """;
}
