// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:bekam/core/utils/values.dart';

/// A custom radio button widget with customizable parameters.
///
/// This widget allows users to create radio buttons with left or right-aligned text,
/// custom styling, and optional gradients. It provides callbacks to handle changes
/// in the selected value.
class CustomRadioButton extends StatelessWidget {
  /// Creates a [CustomRadioButton] instance.
  ///
  /// The [decoration] parameter defines the visual appearance of the radio button container.
  /// The [alignment] parameter specifies the alignment of the radio button within its container.
  /// The [isRightCheck] parameter controls whether the radio button appears on the right side of the text.
  /// The [iconSize] parameter specifies the size of the radio button icon.
  /// The [value] parameter is the value associated with the radio button.
  /// The [groupValue] parameter is the currently selected value in the radio group.
  /// The [onChange] parameter is a callback function triggered when the radio button is selected.
  /// The [text] parameter is the text displayed next to the radio button.
  /// The [width] parameter specifies the width of the radio button container.
  /// The [padding] parameter defines the padding around the radio button container.
  /// The [textStyle] parameter specifies the style of the text next to the radio button.
  /// The [textAlignment] parameter controls the alignment of the text.
  /// The [gradient] parameter is a gradient to apply to the radio button container.
  /// The [backgroundColor] parameter sets the background color of the radio button container.
  const CustomRadioButton({
    Key? key,
    this.decoration,
    this.alignment,
    this.isRightCheck,
    this.iconSize,
    required this.value,
    required this.groupValue,
    required this.onChange,
    this.text,
    this.width,
    this.padding,
    this.textStyle,
    this.textAlignment,
    this.gradient,
    this.backgroundColor,
  }) : super(key: key);

  /// The visual appearance of the radio button container.
  final BoxDecoration? decoration;

  /// The alignment of the radio button within its container.
  final Alignment? alignment;

  /// Whether the radio button appears on the right side of the text.
  final bool? isRightCheck;

  /// The size of the radio button icon.
  final double? iconSize;

  /// The value associated with the radio button.
  final String value;

  /// The currently selected value in the radio group.
  final String? groupValue;

  /// Callback function triggered when the radio button is selected.
  final Function(String) onChange;

  /// The text displayed next to the radio button.
  final String? text;

  /// The width of the radio button container.
  final double? width;

  /// The padding around the radio button container.
  final EdgeInsetsGeometry? padding;

  /// The style of the text next to the radio button.
  final TextStyle? textStyle;

  /// The alignment of the text.
  final TextAlign? textAlignment;

  /// A gradient to apply to the radio button container.
  final Gradient? gradient;

  /// The background color of the radio button container.
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildRadioButtonWidget(),
          )
        : _buildRadioButtonWidget();
  }

  Widget _buildRadioButtonWidget() {
    return InkWell(
      onTap: () {
        onChange(value);
      },
      child: Container(
        decoration: decoration ?? radioButtonDecoration,
        width: width,
        padding: padding,
        child: (isRightCheck ?? false)
            ? _buildRightSideRadioButton()
            : _buildLeftSideRadioButton(),
      ),
    );
  }

  Widget _buildLeftSideRadioButton() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: _buildRadioButton(),
        ),
        _buildTextWidget(),
      ],
    );
  }

  Widget _buildRightSideRadioButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildTextWidget(),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: _buildRadioButton(),
        ),
      ],
    );
  }

  Widget _buildTextWidget() {
    return Text(
      text ?? "",
      textAlign: textAlignment ?? TextAlign.center,
      style: textStyle ?? Get.textTheme.titleSmall,
    );
  }

  Widget _buildRadioButton() {
    return SizedBox(
      height: iconSize,
      width: iconSize,
      child: Radio<String>(
        visualDensity: const VisualDensity(
          vertical: - GlobalAppSizes.s_4,
          horizontal: - GlobalAppSizes.s_4,
        ),
        value: value,
        groupValue: groupValue,
        onChanged: (value) {
          onChange(value!);
        },
      ),
    );
  }

  BoxDecoration get radioButtonDecoration {
    return BoxDecoration(color: backgroundColor);
  }
}
