import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikani/core/extensions/theme_extension.dart';
import 'package:pikani/core/utils/assets.dart';
import 'package:pikani/core/utils/constants.dart';
import 'package:pikani/presentation/widgets/custom_app_bar.dart';
import 'piikani_clans_cubit.dart';
import 'piikani_clans_initial_params.dart';
import 'piikani_clans_state.dart';

class PiikaniClansPage extends StatefulWidget {
final PiikaniClansCubit cubit;
 final PiikaniClansInitialParams initialParams;

  static const path ='/piikani_clans';
const PiikaniClansPage({
Key? key,
required this.cubit,
required this.initialParams,
}) : super(key: key);

@override
State<PiikaniClansPage> createState() => _PiikaniClansState();
}

class _PiikaniClansState extends State<PiikaniClansPage> {

 PiikaniClansCubit get cubit => widget.cubit;

@override
void initState() {
super.initState();
cubit.navigator.context=context;
cubit.onInit(widget.initialParams);
}

final String _uppertext = '''
Piikani Clans - Piikani IihkawqaiksiThe Piikani Nation was made up of several clans that were still recognized during the late 1970’s. These clans occupied the areas near the Oldman River basin. The river bottom area provided shelter, water, food and plants for their usages. The Oldman River was one of their favorite places along with the Porcupine Hills and Crow lodge Creek.
''';

final String _lowertext = '''
The Piikani Nation is a member of the Blackfoot Confederacy, they were the caretakers of the western area of the Blackfoot territory. When the 49th parallel was placed by the two governments, Canada and the United States of America. It split the Piikani into two groups one in each country. The American government could not say the Piikani and named the tribe Blackfeet because it was a grammar correction of the word Blackfoot. There was more than one member of the tribe. 

The Piikani Nation maintained their livelihood along the east part of the Rocky Mountains. This area had valuable resources and numerous events occurred throughout the course of history. Our oral stories are told of the area along with geographic landmarks that validate our existence. One of the Napii stories tells us how Napii gambled with another being from across the mountains for the territory.  The story about the Elk resolving their despite which marks the beginning of the northwest boundary of the Blackfoot territory. And an important practise/ritual in our ceremonies, was gifted from this story. The story of Thunder and his gift to the Piikani, a medicine pipe, which tell us the relationship we have with universe. The Beaver Bundle was given to us in Waterton Lakes which provides spiritual strengths. The demise of the buffalo changed our lifestyle. We no longer had access to our territory therefore we settled along the river bottom. The “Ksikksisoka’simiksi – White Robe Clan occupied the High Bush west area. East of them lived the “Aapaiaitapiksi – Bulrushes/Cattail Clan. Then they “Miawaahpitsiiksi – Seldom/Never Lonesome in the central area. The “Ni’taitsskaiksi – Lone Fighters east of this clan. The “Immoyissksiiksi – Hairy Nose Clan and the Makoyipisskataan – Wolf/Coyote Cutback Clan lived on the very eastern part of the reserve. The “Kayikkoa’kiikiniksi – White Breast Clan lived across from the High Bush clan,  the “Kaamtaaniksi” occupied the north side of the river, east of the White Breast Clan. 
''';
@override
Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
    return BlocBuilder<PiikaniClansCubit, PiikaniClansState>(
      bloc: cubit,
      builder: (context, state) {
        return Scaffold(
          appBar: CustomAppBar(
            title: "Piikani Clans",
            subTitle: "Information",
          ),
          body: Padding(
            padding: EdgeInsets.all(kScreenPadding),
            child: SingleChildScrollView(
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Text("Piikani Clans - Piikani Iihkawqaiksi",style: context.textTheme.headlineSmall?.copyWith(
                      letterSpacing: 1,
                      fontSize: 26.0,
                    ),),
                  SizedBox(height: 15,),
                  Text(_uppertext.trim(),style: context.textTheme.bodyLarge?.copyWith(fontSize: 18),),
                  SizedBox(height: 15,),
                  Image.asset(Assets.piikaniClansImage, height:(size.height/4),width: double.infinity,fit: BoxFit.cover,),
                SizedBox(height: 5,),
                InkWell(
                  onTap: (){
                   cubit.downloadAssetToSelectedFolder(context,Assets.piikaniClansImage,"ClansImage-${cubit.generateTwoDigitRandomNumber()}");
                  },
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text("Click to Download Image",style: context.textTheme.bodyLarge?.copyWith(color: context.colorTheme.tertiaryFixed),)),
                ),
                  SizedBox(height: 15,),
                  Text(_lowertext.trim(),style: context.textTheme.bodyLarge?.copyWith(fontSize: 18),),
                   SizedBox(height: 20,),
              ],),),
            ),
          ),
        );
      },
    );
}
}
