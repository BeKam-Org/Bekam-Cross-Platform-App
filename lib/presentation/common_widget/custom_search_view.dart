// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:bekam/core/utils/values.dart';
import 'package:bekam/presentation/common_widget/custom_image_view.dart';

/// A custom search view widget that provides a search input field with customizable parameters.
///
/// This widget includes features such as autofocus, prefix and suffix icons, hint text,
/// validation, and the ability to clear the input. It also supports various styling options.
class CustomSearchView extends StatelessWidget {
  /// Creates a [CustomSearchView] instance.
  ///
  /// The [alignment] parameter specifies the alignment of the search view.
  /// The [width] parameter specifies the width of the search view.
  /// The [controller] parameter is the controller for the search input field.
  /// The [focusNode] parameter is the focus node for the search input field.
  /// The [autofocus] parameter determines whether the search input field should be autofocused.
  /// The [textStyle] parameter defines the style of the text in the search input field.
  /// The [textInputType] parameter defines the keyboard type for the search input field.
  /// The [maxLines] parameter specifies the maximum number of lines for the search input field.
  /// The [hintText] parameter is the hint text displayed when the search input field is empty.
  /// The [hintStyle] parameter defines the style of the hint text.
  /// The [prefix] parameter is the widget displayed as the prefix icon.
  /// The [prefixConstraints] parameter defines constraints for the prefix icon.
  /// The [suffix] parameter is the widget displayed as the suffix icon.
  /// The [suffixConstraints] parameter defines constraints for the suffix icon.
  /// The [contentPadding] parameter defines padding around the search input field content.
  /// The [borderDecoration] parameter defines the border style for the search input field.
  /// The [fillColor] parameter sets the background color of the search input field.
  /// The [filled] parameter determines whether the search input field should be filled.
  /// The [validator] parameter is a callback function to validate the search input.
  /// The [onChanged] parameter is a callback function triggered when the search input changes.
  const CustomSearchView({
    Key? key,
    this.alignment,
    this.width,
    this.controller,
    this.focusNode,
    this.autofocus = true,
    this.textStyle,
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
    this.onChanged,
  }) : super(
          key: key,
        );

  /// The alignment of the search view.
  final Alignment? alignment;

  /// The width of the search view.
  final double? width;

  /// The controller for the search input field.
  final TextEditingController? controller;

  /// The focus node for the search input field.
  final FocusNode? focusNode;

  /// Whether the search input field should be autofocused.
  final bool? autofocus;

  /// The style of the text in the search input field.
  final TextStyle? textStyle;

  /// The keyboard type for the search input field.
  final TextInputType? textInputType;

  /// The maximum number of lines for the search input field.
  final int? maxLines;

  /// The hint text displayed when the search input field is empty.
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

  /// Padding around the search input field content.
  final EdgeInsets? contentPadding;

  /// The border style for the search input field.
  final InputBorder? borderDecoration;

  /// The background color of the search input field.
  final Color? fillColor;

  /// Whether the search input field should be filled.
  final bool? filled;

  /// Callback function to validate the search input.
  final FormFieldValidator<String>? validator;

  /// Callback function triggered when the search input changes.
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: searchViewWidget,
          )
        : searchViewWidget;
  }

  Widget get searchViewWidget => SizedBox(
        width: width ?? double.maxFinite,
        child: TextFormField(
          controller: controller,
          focusNode: focusNode ?? FocusNode(),
          autofocus: autofocus!,
          style: textStyle ?? CustomTextStyles.bodyMediumBluegray40001_1,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: decoration,
          validator: validator,
          onChanged: (String value) {
            onChanged!.call(value);
          },
        ),
      );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? CustomTextStyles.bodyMediumBluegray40001_1,
        prefixIcon: prefix ??
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 12.myWidth,
                vertical: 10.myHeight,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(
                    30.myWidth,
                  ),
                ),
              ),
              child: CustomImageView(
                imagePath: GlobalAppSVG.locationSvg,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
        prefixIconConstraints: prefixConstraints ??
            BoxConstraints(
              maxHeight: 44.myHeight,
            ),
        suffixIcon: suffix ??
            Padding(
              padding: EdgeInsets.only(
                right: 15.myWidth,
              ),
              child: IconButton(
                onPressed: () => controller!.clear(),
                icon: Icon(
                  Icons.clear,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
        suffixIconConstraints: suffixConstraints ??
            BoxConstraints(
              maxHeight: 44.myHeight,
            ),
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.only(
              top: 12.myHeight,
              right: 12.myWidth,
              bottom: 12.myHeight,
            ),
        fillColor: fillColor ?? GlobalAppColors.gray100,
        filled: filled,
        border: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(
                  30.myWidth,
                ),
              ),
              borderSide: BorderSide.none,
            ),
        enabledBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(
                  30.myWidth,
                ),
              ),
              borderSide: BorderSide.none,
            ),
        focusedBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(
                  30.myWidth,
                ),
              ),
              borderSide: BorderSide.none,
            ),
      );
}

/// Extension on [CustomSearchView] to facilitate inclusion of all types of border style etc
extension SearchViewStyleHelper on CustomSearchView {
  static OutlineInputBorder get fillGrayTL15 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.myWidth),
        borderSide: BorderSide.none,
      );
}
