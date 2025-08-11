import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikani/core/extensions/theme_extension.dart';
import 'package:pikani/core/utils/assets.dart';
import 'package:pikani/core/utils/constants.dart';
import 'package:pikani/presentation/widgets/custom_app_bar.dart';
import 'winter_count_cubit.dart';
import 'winter_count_initial_params.dart';
import 'winter_count_state.dart';

class WinterCountPage extends StatefulWidget {
  final WinterCountCubit cubit;
  final WinterCountInitialParams initialParams;

  static const path = '/winter_count';

  const WinterCountPage({
    Key? key,
    required this.cubit,
    required this.initialParams,
  }) : super(key: key);

  @override
  State<WinterCountPage> createState() => _WinterCountState();
}

class _WinterCountState extends State<WinterCountPage> {
  WinterCountCubit get cubit => widget.cubit;

  @override
  void initState() {
    super.initState();
    cubit.navigator.context = context;
    cubit.onInit(widget.initialParams);
  }

  final String _uppertext = '''
Winter Counts are pictorial calendars or histories on animal hides on which First Nations recorded major events from every year.  

Bull Plume was the custodian of the Blackfoot Winter Count, which recorded the history beginning in 1761 on a buffalo hide.  The symbols are pictographic images, with the sign language prevalent in the symbols that Bull Plume developed.
''';

  final String _lowertext = '''
Bull Plume was born in the early 1880’s and he was raised among the Seldom Lonesome Clan which occupied the area where the Crow Lodge Creek meets the Oldman River. His grandfather “Wolf Child” was the keeper of recorded calendar of significant events dating as far back as 1760’s. These events were drawn on a buffalo hide. The events included battles, death of prominent Piikani members, numerous encounters of weather occurrences, the arrival of diseases like small pox and the measles, The disappearance of the buffalo, the signing of Treaty 7 in 1877, and the death of Queen Victoria. Canon William R. Haynes was a missionary working with the Piikani, the early 1900’s, Bull Plume sat with Reverend W.R. Haynes began to interpret the events, an English explanation was interpreted to each drawing. Paul M. Raczka an author wrote two books on Bull Plume’s calendar, the first one was “Winter Counts” and the second one was “A Blackfoot History the Winter Count”. They are many descendants of “Bull Plume” within the Piikani Nation.  
''';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<WinterCountCubit, WinterCountState>(
      bloc: cubit,
      builder: (context, state) {
        return Scaffold(
          appBar: CustomAppBar(
            title: "The Winter Count",
            subTitle: "Pictorial Calendars of Piikani History",
          ),
          body: Padding(
            padding: EdgeInsets.all(kScreenPadding),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Winter Count",
                      style: context.textTheme.headlineSmall?.copyWith(
                        letterSpacing: 1,
                        fontSize: 26.0,
                      ),
                    ),
                    Text(
                      "‘Pictorial Calendars of Piikani History’",
                      style: context.textTheme.bodyLarge?.copyWith(
                        fontStyle: FontStyle.italic,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      _uppertext.trim(),
                      style: context.textTheme.bodyLarge?.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 15),
                    Image.asset(
                      Assets.winterCountImage,
                      height: (size.height / 4),
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 5),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Stamiksisaapop - Bull Plume",
                        style: context.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      _lowertext.trim(),
                      style: context.textTheme.bodyLarge?.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
