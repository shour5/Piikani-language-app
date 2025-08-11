import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'winter_count_initial_params.dart';
import 'winter_count_state.dart';
import 'winter_count_navigator.dart';


class WinterCountCubit extends Cubit<WinterCountState> {
WinterCountNavigator navigator;
WinterCountCubit({required this.navigator}) : super(WinterCountState.initial());

BuildContext get context => navigator.context;

 onInit(WinterCountInitialParams initialParams){

  }

}
