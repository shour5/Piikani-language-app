import 'package:flutter/material.dart';
import 'package:pikani/core/extensions/theme_extension.dart';
import 'package:pikani/core/utils/constants.dart';
import 'package:pikani/domain/entities/sign_language_short_phrase.dart';

class ShortPhraseTile extends StatelessWidget {
  final bool isSelected;
  final SignLanguageShortPhrase phrase;
  final Function(SignLanguageShortPhrase)? onTap;

  const ShortPhraseTile({
    super.key,
    this.isSelected = false,
    required this.phrase,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onTap?.call(phrase);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        margin: EdgeInsets.symmetric(horizontal: kScreenPadding, vertical: 5),
        decoration: BoxDecoration(
          border: Border.all(color: context.colorTheme.onSurface),
          borderRadius: BorderRadius.circular(8),
          color:
              isSelected
                  ? context.colorTheme.tertiaryContainer
                  : context.colorTheme.surface,
        ),
        child: Center(
          child: Text(
            "${phrase.phrase}",
            style: context.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w400,
              letterSpacing: 0.6,
              color: isSelected ? context.colorTheme.surface : null,
            ),
          ),
        ),
      ),
    );
  }
}
