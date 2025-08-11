import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikani/core/extensions/theme_extension.dart';
import 'package:pikani/core/utils/constants.dart';
import 'package:pikani/presentation/widgets/custom_app_bar.dart';
import 'understanding_pikani_cubit.dart';
import 'understanding_pikani_initial_params.dart';
import 'understanding_pikani_state.dart';

class UnderstandingPikaniPage extends StatefulWidget {
  final UnderstandingPikaniCubit cubit;
  final UnderstandingPikaniInitialParams initialParams;

  static const path = '/understanding_pikani';

  const UnderstandingPikaniPage({
    Key? key,
    required this.cubit,
    required this.initialParams,
  }) : super(key: key);

  @override
  State<UnderstandingPikaniPage> createState() => _UnderstandingPikaniState();
}

class _UnderstandingPikaniState extends State<UnderstandingPikaniPage> {
  UnderstandingPikaniCubit get cubit => widget.cubit;

  @override
  void initState() {
    super.initState();
    cubit.navigator.context = context;
    cubit.onInit(widget.initialParams);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UnderstandingPikaniCubit, UnderstandingPikaniState>(
      bloc: cubit,
      builder: (context, state) {
        return Scaffold(
          appBar: CustomAppBar(
            title: "Understanding",
            subTitle: "The Lifestyle of the Piikani",
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(kScreenPadding),
              child: Column(
                spacing: 15,
                children: [
                  Text("Piikani Paitapilyssin",style: context.textTheme.headlineSmall?.copyWith(
                    letterSpacing: 1,
                    fontSize: 26.0,
                  ),),
                  Text(_text.trim(),style: context.textTheme.bodyLarge?.copyWith(fontSize: 18),),

                ],
              ),
            ),
          ),
        );
      },
    );
  }

  final String _text = '''
  The Peigan Nation is a member of the Blackfoot Confederacy of three Blackfoot speaking tribes: Bloods, Blackfoot, and Peigan.  The Peigans are both the smallest and the largest tribe within the Blackfoot Nation.  By themselves, they are the smallest Blackfoot tribe to sign Treaty No. 7, but when joined with the South Peigans (Blackfeet) in Montana together they form the largest tribe of the Blackfoot Nation.
  
Today the North Peigans have a membership of 2,600 people.  During the signing of Treaty No. 7 the Peigans specified three locations; Oldman River, the Porcupine Hills, and Crow's Creek to be a part of their Reserve.  The places mentioned were favorite wintering areas which provided a base to hunt Buffalo, but as the Treaty was being signed the Buffalo were rapidly disappearing from the hunting ground due to commercial hide hunters.
  
By 1879 the Peigans were encouraged to go to their new Reserve west of Fort Macleod in which they are presently located, and by 1882 the boundaries of the Reserve was established with 181.4 square miles and 11.5 timber area which was based on five persons per square mile.  Agriculture, ranching became a way of survival since the Buffalo were disappearing, and the Peigans became successful ranchers with their herds of cattle and horses.  From 1879 to 1896 the Anglican and Roman Catholic Missionaries arrived onto the Reserve and opened Boarding Schools in which the Peigans attended to receive schooling.
  
The Peigan Political system went through changes from traditional appointment of leadership to an elective system which was introduced in 1964.  Since 1877 the Peigans have had 12 Chiefs including the present day Chief Leonard Bastien.  The Peigan leadership includes 1 Chief and 12 councillors.  Leadership elections are held every 2 years.
  
The Peigans over the years continued to be a quiet yet independent people who were not afraid to try new ideas.  They were the first to demand the vote in provincial elections, to allow liquor on the Reserve, to assume self-administration, and the first to host the Indian Days Celebration.  The Peigans also took control of their own Education.  The Peigans have introduced many programs and services for the betterment of their community.  The Peigans take a lot of pride in their community and welcome visitors to their homes.
  
The Peigan Nation sincerely hopes that you will utilize this app as a learning tool and positive step forward in our journey towards reclaiming our proud identity as Blackfoot people.    
  
  ''';
}
