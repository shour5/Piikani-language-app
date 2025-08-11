import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'sign_language_info_initial_params.dart';
import 'sign_language_info_state.dart';
import 'sign_language_info_navigator.dart';


class SignLanguageInfoCubit extends Cubit<SignLanguageInfoState> {
SignLanguageInfoNavigator navigator;
SignLanguageInfoCubit({required this.navigator}) : super(SignLanguageInfoState.initial());

BuildContext get context => navigator.context;

 onInit(SignLanguageInfoInitialParams initialParams){

  }

}
