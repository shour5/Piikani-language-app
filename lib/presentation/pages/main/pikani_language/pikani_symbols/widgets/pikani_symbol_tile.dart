import 'package:flutter/material.dart';
import 'package:pikani/core/extensions/theme_extension.dart';
import 'package:pikani/domain/entities/pikani_symbol.dart';


class PikaniSymbolTile extends StatelessWidget {
  final PikaniSymbol symbol;

  const PikaniSymbolTile({super.key, required this.symbol});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 2, color: context.colorTheme.onSurface)
      ),
      child: Row(
        children: [
          Image.asset(symbol.icon, height: 160,width: 130,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    symbol.title,
                    style:  context.textTheme.bodyLarge?.copyWith(fontSize: 18),
                  ),
                  Text(
                    symbol.description,
                      style:  context.textTheme.bodyMedium?.copyWith(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
