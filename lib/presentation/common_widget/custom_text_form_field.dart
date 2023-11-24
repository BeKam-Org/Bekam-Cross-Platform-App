// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:bekam/core/utils/values.dart';

/// A custom text form field widget that provides a text input field with customizable parameters.
///
/// This widget includes features such as autofocus, prefix and suffix icons, hint text,
/// validation, and the ability to obscure text. It also supports various styling options.
class CustomTextFormField extends StatelessWidget {
  /// Creates a [CustomTextFormField] instance.
  ///
  /// The [alignment] parameter specifies the alignment of the text form field.
  /// The [width] parameter specifies the width of the text form field.
  /// The [controller] parameter is the controller for the text input field.
  /// The [focusNode] parameter is the focus node for the text input field.
  /// The [autofocus] parameter determines whether the text input field should be autofocused.
  /// The [textStyle] parameter defines the style of the text in the input field.
  /// The [obscureText] parameter determines whether the text should be obscured.
  /// The [textInputAction] parameter defines the keyboard action for the text input field.
  /// The [textInputType] parameter defines the keyboard type for the text input field.
  /// The [maxLines] parameter specifies the maximum number of lines for the text input field.
  /// The [hintText] parameter is the hint text displayed when the field is empty.
  /// The [hintStyle] parameter defines the style of the hint text.
  /// The [prefix] parameter is the widget displayed as the prefix icon.
  /// The [prefixConstraints] parameter defines constraints for the prefix icon.
  /// The [suffix] parameter is the widget displayed as the suffix icon.
  /// The [suffixConstraints] parameter defines constraints for the suffix icon.
  /// The [contentPadding] parameter defines padding around the input field content.
  /// The [borderDecoration] parameter defines the border style for the input field.
  /// The [fillColor] parameter sets the background color of the input field.
  /// The [filled] parameter determines whether the input field should be filled.
  /// The [validator] parameter is a callback function to validate the input.
  const CustomTextFormField({
    Key? key,
    this.alignment,
    this.width,
    this.controller,
    this.focusNode,
    this.autofocus = true,
    this.textStyle,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
  }) : super(
          key: key,
        );

  /// The alignment of the text form field.
  final Alignment? alignment;

  /// The width of the text form field.
  final double? width;

  /// The controller for the text input field.
  final TextEditingController? controller;

  /// The focus node for the text input field.
  final FocusNode? focusNode;

  /// Whether the text input field should be autofocused.
  final bool? autofocus;

  /// The style of the text in the input field.
  final TextStyle? textStyle;

  /// Whether the text should be obscured.
  final bool? obscureText;

  /// The keyboard action for the text input field.
  final TextInputAction? textInputAction;

  /// The keyboard type for the text input field.
  final TextInputType? textInputType;

  /// The maximum number of lines for the text input field.
  final int? maxLines;

  /// The hint text displayed when the field is empty.
  final String? hintText;

  /// The style of the hint text.
  final TextStyle? hintStyle;

  /// The widget displayed as the prefix icon.
  final Widget? prefix;

  /// Constraints for the prefix icon.
  final BoxConstraints? prefixConstraints;

  /// The widget displayed as the suffix icon.
  final Widget? suffix;

  /// Constraints for the suffix icon.
  final BoxConstraints? suffixConstraints;

  /// Padding around the input field content.
  final EdgeInsets? contentPadding;

  /// The border style for the input field.
  final InputBorder? borderDecoration;

  /// The background color of the input field.
  final Color? fillColor;

  /// Whether the input field should be filled.
  final bool? filled;

  /// Callback function to validate the input.
  final FormFieldValidator<String>? validator;
  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: textFormFieldWidget,
          )
        : textFormFieldWidget;
  }

  Widget get textFormFieldWidget => SizedBox(
        width: width ?? double.maxFinite,
        child: TextFormField(
          controller: controller,
          focusNode: focusNode ?? FocusNode(),
          autofocus: autofocus!,
          style: textStyle ?? Get.textTheme.bodyMedium,
          obscureText: obscureText!,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: decoration,
          validator: validator,
        ),
      );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? CustomTextStyles.bodyMediumBluegray40001_1,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.all(12.myWidth),
        fillColor: fillColor ?? GlobalAppColors.gray100,
        filled: filled,
        border: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.myWidth),
              borderSide: BorderSide.none,
            ),
        enabledBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.myWidth),
              borderSide: BorderSide.none,
            ),
        focusedBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.myWidth),
              borderSide: BorderSide.none,
            ),
      );
}

/// Extension on [CustomTextFormField] to facilitate inclusion of all types of border style etc
extension TextFormFieldStyleHelper on CustomTextFormField {
  static OutlineInputBorder get fillGrayTL30 => OutlineInputBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(
            30.myWidth,
          ),
        ),
        borderSide: BorderSide.none,
      );
}
