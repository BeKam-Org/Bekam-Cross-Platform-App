// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import 'package:bekam/core/utils/values.dart';

class GlobalAppTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final String? labelText;
  final bool isObscured;
  final VoidCallback onEditingComplete;
  final int? maxLines;
  final FocusNode focusNode;
  final Function changed;
  final Widget? suffixIcon;
  final IconData? prefixIcon;
  final Color? prefixIconColor;
  final Color? suffixIconColor;
  final Color? fillColor;
  final double? borderRadius;
  final TextInputType? textInputType;
  final Color? borderColor;
  final bool suggerstion;
  final bool enabled;
  final TextInputAction textInputAction;
  final bool isValidator;
  final String? validatorMessage;
  final bool isPhoneNumber;

  const GlobalAppTextField({
    super.key,
    required this.controller,
    this.hintText,
    this.labelText,
    required this.isObscured,
    required this.onEditingComplete,
    this.maxLines,
    required this.focusNode,
    required this.changed,
    this.suffixIcon,
    this.prefixIcon,
    this.prefixIconColor,
    this.suffixIconColor,
    this.fillColor,
    this.borderRadius,
    this.textInputType,
    this.borderColor,
    required this.suggerstion,
    this.enabled = true,
    this.isValidator = false,
    this.validatorMessage,
    required this.textInputAction,
    this.isPhoneNumber = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).highlightColor,
        borderRadius: isPhoneNumber
            ? GlobalAppBorderRadius.topRight10BottomRight10
            : GlobalAppBorderRadius.r_10,
        boxShadow: [
          BoxShadow(
              color: GlobalAppColors.appGrey.withOpacity(0.1),
              spreadRadius: GlobalAppSizes.s_1,
              blurRadius: GlobalAppSizes.s_3,
              offset: const Offset(
                GlobalAppSizes.s_0,
                GlobalAppSizes.s_5,
              )) // changes position of shadow
        ],
      ),
      child: TextFormField(
        enabled: enabled,
        controller: controller,
        maxLines: maxLines ?? 1,
        maxLength: isPhoneNumber ? 15 : null,
        focusNode: focusNode,
        initialValue: null,
        onEditingComplete: onEditingComplete,
        enableSuggestions: suggerstion,
        obscureText: isObscured,
        textInputAction: textInputAction,
        keyboardType: textInputType ?? TextInputType.text,
        inputFormatters: [
          isPhoneNumber
              ? FilteringTextInputFormatter.digitsOnly
              : FilteringTextInputFormatter.singleLineFormatter
        ],
        validator: (input) {
          if (input!.isEmpty) {
            if (isValidator) {
              return validatorMessage ?? "";
            }
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: hintText ?? '',
          filled: fillColor != null,
          fillColor: fillColor,
          contentPadding: GlobalAppEdgeInsets.sv12h15,
          isDense: true,
          counterText: '',
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).primaryColor)),
          hintStyle: GlobalAppStyles.titilliumRegular
              .copyWith(color: Theme.of(context).hintColor),
          errorStyle: const TextStyle(height: GlobalAppSizes.s_1p5),
          border: InputBorder.none,
          prefixIcon: Icon(prefixIcon, color: prefixIconColor),
          suffixIcon: suffixIcon ?? const SizedBox(),
          // focusedBorder: OutlineInputBorder(
          //     borderSide: BorderSide(color: Theme.of(context).primaryColor)),
          // hintStyle: GlobalAppStyles.ubuntuTitleSemiBold
          //     .copyWith(color: Theme.of(context).hintColor),
          // errorStyle: TextStyle(height: 1.5),
          labelText: labelText,
          labelStyle: GlobalAppStyles.titilliumSemiBold
              .copyWith(color: Theme.of(context).hintColor),

          // labelStyle:
          //     const TextStyle(color: GlobalAppColors.kScaffoldDark, fontSize: 18),
          // prefixIcon: Icon(prefixIcon, color: prefixIconColor),
          // suffixIcon: suffixIcon ?? const SizedBox(),
          // border: InputBorder.none,
        ),
      ),
    );
  }
}
