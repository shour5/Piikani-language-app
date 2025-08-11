import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'understanding_pikani_initial_params.dart';
import 'understanding_pikani_state.dart';
import 'understanding_pikani_navigator.dart';


class UnderstandingPikaniCubit extends Cubit<UnderstandingPikaniState> {
UnderstandingPikaniNavigator navigator;
UnderstandingPikaniCubit({required this.navigator}) : super(UnderstandingPikaniState.initial());

BuildContext get context => navigator.context;

 onInit(UnderstandingPikaniInitialParams initialParams){

  }

}
