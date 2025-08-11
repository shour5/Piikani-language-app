import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../core/extensions/theme_extension.dart';

class CustomTextField extends StatelessWidget {
  TextEditingController controller;
  String label;
  String hint;
  Function(String)? onChange;
  Function(String)? onSubmit;
  VoidCallback? onTap;
  bool? dealAsDate;
  bool? dealAsTime;
  bool whenTypingEnds;

  bool? hide;
  bool? readOnly;
  bool? disable;

  String? suffixPath;
  String? prefixPath;
  bool? countryPicker;
  bool? genderPicker;
  double? bottomPadding;
  String? initialValue;
  bool? isDetail;
  double? height;
  bool autoFocus;

  double? width;

  double? prefixHeight;
  double? suffixHeight;
  Color? suffixColor;
  bool showCurrentCharacters;
  TextInputType? keyboard;

  List<TextInputFormatter>? inputFormatters;
  Function? suffixAction;

  CustomTextField({Key? key,
    required this.controller,
    this.label="",
    required this.hint,
    this.onChange,
    this.onSubmit,
    this.onTap,
    this.height,
    this.width,
    this.initialValue,
    this.prefixPath,
    this.readOnly,
    this.bottomPadding,
    this.dealAsDate,
    this.dealAsTime,
    this.inputFormatters,
    this.showCurrentCharacters = false,
    this.autoFocus = false,
    this.whenTypingEnds = false,
    this.disable,
    this.isDetail,
    this.keyboard,
    this.countryPicker,
    this.genderPicker,
    this.hide,
    this.prefixHeight,
    this.suffixHeight,
    this.suffixColor,
    this.suffixAction,
    this.suffixPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottomPadding ?? 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          label.isEmpty?const SizedBox.shrink():Text(
            label ?? "",
            style: context.textTheme.labelLarge,
          ),
          label.isEmpty?const SizedBox.shrink():const SizedBox(
            height: 8,
          ),
          SizedBox(
            width: width??double.maxFinite,
            child: TextFormField(
              controller: controller,
              initialValue: initialValue,
              textAlignVertical: TextAlignVertical.top,
              expands: isDetail != null ? true : false,
              onChanged: onChange,
              onFieldSubmitted: onSubmit,
              autofocus: autoFocus,
              inputFormatters: inputFormatters,
              style: context.textTheme.bodyLarge?.copyWith(
                    color: context.colorTheme.tertiary,
                    fontSize: 18,
                ),
              onTap:onTap,
              keyboardType: keyboard ?? TextInputType.text,
              maxLines: isDetail != null ? null : 1,
              readOnly: disable ??
                  dealAsDate ??
                  dealAsTime ??
                  countryPicker ??
                  genderPicker ??
                  readOnly ??
                  false,
              obscureText: hide ?? false,
              cursorColor: context.colorTheme.primary,
              decoration: InputDecoration(
                hintStyle: context.textTheme.bodyLarge?.copyWith(
                    color: context.colorTheme.tertiary,
                    fontSize: 18,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                hintText: hint,
                hintFadeDuration: const Duration(milliseconds: 500),
                isDense: true,
                filled: true,
                contentPadding: const EdgeInsets.only(
                    right: 10,
                    left: 10,
                    top: 9,
                    bottom: 11,
                ),
                fillColor: context.colorTheme.surface,
                enabledBorder: borderStyle(context),
                focusedBorder: borderStyle(context, isActive: true),
              ),
            ),
          ),
        ],
      ),
    );
  }


  borderStyle(BuildContext context, {bool isActive = false}) {
    return OutlineInputBorder(
        borderSide:
        BorderSide(color: context.colorTheme.tertiaryContainer, width: 1),
        borderRadius: BorderRadius.circular(10));
  }


}
