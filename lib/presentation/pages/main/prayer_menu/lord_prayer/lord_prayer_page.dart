import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikani/core/extensions/theme_extension.dart';
import 'package:pikani/core/utils/assets.dart';
import 'package:pikani/core/utils/style.dart';
import 'package:pikani/presentation/pages/main/blackfoot_prayer/widgets/play_button.dart';
import 'package:pikani/presentation/widgets/custom_app_bar.dart';
import '../../../../../core/utils/constants.dart';
import 'lord_prayer_cubit.dart';
import 'lord_prayer_initial_params.dart';
import 'lord_prayer_state.dart';

class LordPrayerPage extends StatefulWidget {
  final LordPrayerCubit cubit;
  final LordPrayerInitialParams initialParams;

  static const path = '/lord_prayer';

  const LordPrayerPage({
    Key? key,
    required this.cubit,
    required this.initialParams,
  }) : super(key: key);

  @override
  State<LordPrayerPage> createState() => _LordPrayerState();
}

class _LordPrayerState extends State<LordPrayerPage> {
  LordPrayerCubit get cubit => widget.cubit;

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
    return BlocBuilder<LordPrayerCubit, LordPrayerState>(
      bloc: cubit,
      builder: (context, state) {
        return Scaffold(
          appBar: CustomAppBar(
            title: "The Lords Prayer",
            subTitle: "Kinnoona Otaatsimoyihkaani",
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                _banner(state),
                Padding(
                  padding: const EdgeInsets.all(kScreenPadding),
                  child: Column(
                    spacing: 20,
                    children: [
                      PlayButton(
                        title: state.playingLordPrayer ? "PAUSE" : "PLAY",
                        onTap: cubit.playLordPrayer,
                      ),
                      Text(
                        _prayerText,
                        style: context.textTheme.titleMedium?.copyWith(
                          letterSpacing: 0,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _banner(LordPrayerState state) {
    return Stack(
      children: [
        Image.asset(
          Assets.lordPrayerBanner,
          width: context.sw,
          fit: BoxFit.cover,
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 20,
              children: [
                Text(
                  "Forward by Shirley Crowshoe",
                  style: context.textTheme.titleLarge?.copyWith(
                    color: Colors.white,
                    shadows: [AppStyle.textShadow()],
                  ),
                ),
                InkWell(
                  onTap: cubit.playShirly,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 50),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: Text(
                      state.playingShirly ? "PAUSE" : "PLAY",
                      style: context.textTheme.titleLarge?.copyWith(
                        color: Colors.white,
                        letterSpacing: 2,
                        shadows: [AppStyle.textShadow()],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  final String _prayerText = """
The Lord’s Prayer
(Kin-Noo-Na Oo-Tat-Tsee-Mo-Yih-Kaan)
Kinnoona Otaatsimoyihkaani.

Our Father who art in heaven.
(I-You Nin-Naan Spooh-Tse-Ma Gee-Tse-Doe-Bee) 
Ayao Ninnaana sspoohtsima kitsitaopii.

Hallowed be thy name.
(Naa-Doo-Waa-Beew Kee-Tse-Neh-Ga-See-Mee)
Naatowa’piiwa kitsinhihka’simi.

Thy Kingdom come – we take your kingmanship.
(Aa-Ness-Tsoo-Tsee-Bee-Naan Gee-Tsee-Naa-Wa-Ssin-Nee) Naanisto’tsi’pinnaana kitsinawassini.

Thy will be done on this Earth, as it is in heaven – Take this earth like above (Nooh-Gaat-Taa-Ness-Too-Tseep-Bin-Naan An-Noom Ksaah-Gom Spooh-Tsee Maa-Ness-Tseeh-Bee) 
Noohkattaanisto’tsi’pinnaana annoma ksaahkomma sspoohtsi maanistsiihpi.

Give us this, our daily bread – our foods (GOO-GEN-NAAN AN-NOOHK Ksees-Tsee-Goy Knee-Tso-Waah-Sin-Naa-Nests)
Kokkinnaana annohka ksistsikoyihka nitsowahsinnaanistsi.

And forgive us our trespasses – our evilness.
(Gee Nooh-Bee-Gim-Moo-Gen-Naan Knee-Saoom-Mee-Tsee-Taa-Bee-Sin-Naa-Nests)
Ki noohpikimmokinnaana nisaommitsitapiyssinnaanistsi.

As we forgive them that trespass against us – pity us against those that have evil thoughts against us.
(Gee Nooh-Gaa-Bee-Gim-Mo-Keen-Naan Aan-Knee-Ksee Nee-Taa-Saw-Mests-Kseem-Staa-Taa-Waa)
Ki noohkapikimmokinaanna anniksi nitasaomistsiksimsstaawa.

But deliver us from evil – place/guide us straight not to do bad things.
(Gee Gaam-Moot-Tsee-Bew-Gen-Naan Naah-Ga Saa-Waa-Tso-Tseeh-Bin-Naan Maa-Gaa-Bee)
Ki Kaamotsipiokinnaana naahka saawatsotsipinnaana maka’pii.

For thine is the kingdom – You remember your kingmanship.
(Gee-Stoo Gee-Dass-Ksee-Noh-Bin-Naan Neen-Naae-Sin-Knee)
Kiistowa kitaissksinohpinnaana ninnayssini.

The power and thy glory for ever and ever – your importance and your magic/power to be everlasting.
(Gee Oo-Too-Taa-Ma-Pssin-Knee Gee- Saa-Poons-Staa-Tsis Maak-Goo-Maa-Nes-Dess-See-Tsee)
Ki o’totama’pssini ki saponsstaatsisi maahkomanistaissistsi.

Amen.
(Gann-Naa-Yee)
Kianniayi.

  """;
}
