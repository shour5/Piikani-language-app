import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:pikani/domain/entities/pikani_symbol.dart';
import '../../../../../core/utils/assets.dart';
import 'pikani_symbols_initial_params.dart';
import 'pikani_symbols_state.dart';
import 'pikani_symbols_navigator.dart';

class PikaniSymbolsCubit extends Cubit<PikaniSymbolsState> {
  PikaniSymbolsNavigator navigator;

  PikaniSymbolsCubit({required this.navigator})
    : super(PikaniSymbolsState.initial());

  BuildContext get context => navigator.context;

  onInit(PikaniSymbolsInitialParams initialParams) {}

  final List<PikaniSymbol> pikaniSymbols = [
    PikaniSymbol(
        icon: Assets.symbolPikani,
        title: "Piikani (bee gun knee)",
        description: "The triangle with a darken circle on top is representing a man (person) called 'Matapi' in Blackfoot. The apostrophes near the darken circle represents a clenched hand in a circular motion to indicate the tribe."
    ),
    PikaniSymbol(
        icon: Assets.symbolSittingBehindEagle,
        title: "Sitting Behind Eagle Tail Feathers",
        description: "Sooa'tsitapitaopii\n(soo waa tsee taa bee doh bee)"
    ),
    PikaniSymbol(
        icon: Assets.symbolBlackfeet,
        title: "Blackfeet - Siksika",
        description: "(see ksee kaa)\nThe foot symbol is identifying the Blackfoot or Siksika."
    ),
    PikaniSymbol(
        icon: Assets.symbolSarcee,
        title: "Sarcee (saar see)",
        description: "The horizontal line our from the circle with the three vertical lines represent their chief who was 'Bull Head'."
    ),
    PikaniSymbol(
        icon: Assets.symbolKanai,
        title: "Kainai (gaa naah)",
        description: "The triangle with the darken circle and a line through the darken circle is representing the term all chief for the tribe."
    ),
    PikaniSymbol(
        icon: Assets.symbolWhiteMan,
        title: "White Man Naapiikoan (naa bee cue one)",
        description: "The symbol of a cross on top of the triangle represented the missionaries that were first to be in complete contact with the Piikani."
    ),
    PikaniSymbol(
        icon: Assets.symbolStoney,
        title: "Stoney - Saahsaisso'kitaki",
        description: "(saah sis soo kee taa key)\nThe symbol has a circle that is not darken and a horizontal line just below the circle to represent the church cross who was very influential with the tribe."
    ),
  ];
}
