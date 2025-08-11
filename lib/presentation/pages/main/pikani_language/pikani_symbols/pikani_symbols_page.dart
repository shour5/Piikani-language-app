import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikani/core/utils/constants.dart';
import 'package:pikani/presentation/pages/main/pikani_language/pikani_symbols/widgets/pikani_symbol_tile.dart';
import 'package:pikani/presentation/widgets/custom_app_bar.dart';
import 'pikani_symbols_cubit.dart';
import 'pikani_symbols_initial_params.dart';
import 'pikani_symbols_state.dart';

class PikaniSymbolsPage extends StatefulWidget {
  final PikaniSymbolsCubit cubit;
  final PikaniSymbolsInitialParams initialParams;

  static const path = '/pikani_symbols';

  const PikaniSymbolsPage({
    Key? key,
    required this.cubit,
    required this.initialParams,
  }) : super(key: key);

  @override
  State<PikaniSymbolsPage> createState() => _PikaniSymbolsState();
}

class _PikaniSymbolsState extends State<PikaniSymbolsPage> {
  PikaniSymbolsCubit get cubit => widget.cubit;

  @override
  void initState() {
    super.initState();
    cubit.navigator.context = context;
    cubit.onInit(widget.initialParams);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PikaniSymbolsCubit, PikaniSymbolsState>(
      bloc: cubit,
      builder: (context, state) {
        return Scaffold(
          appBar: CustomAppBar(
            title: "Piikani Symbols",
            subTitle: "Getting to know...",
          ),
          body: ListView.separated(
            itemCount: cubit.pikaniSymbols.length,
            padding: EdgeInsets.all(kScreenPadding),
            separatorBuilder: (context, index) {
              return SizedBox(height: 15,);
            },
            itemBuilder: (context, index) {
              return PikaniSymbolTile(
                symbol: cubit.pikaniSymbols[index],
              );
            },
          ),
        );
      },
    );
  }
}
