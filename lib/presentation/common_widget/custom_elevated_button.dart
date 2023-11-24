// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:bekam/core/utils/values.dart';
import 'package:bekam/presentation/common_widget/base_button.dart';

/// A customizable elevated button widget that extends [BaseButton].
class CustomElevatedButton extends BaseButton {
  /// Creates a [CustomElevatedButton].
  ///
  /// [key] is an optional parameter to provide a key to this widget.
  /// [decoration] defines the decoration of the button.
  /// [leftIcon] is a widget to be displayed on the left side of the button text.
  /// [rightIcon] is a widget to be displayed on the right side of the button text.
  /// [margin] sets the margin of the button.
  /// [onPressed] is a callback function triggered when the button is pressed.
  /// [buttonStyle] defines the visual appearance of the button.
  /// [alignment] sets the alignment of the button within its parent.
  /// [buttonTextStyle] defines the style of the text within the button.
  /// [isDisabled] indicates whether the button is disabled.
  /// [height] sets the height of the button.
  /// [width] sets the width of the button.
  /// [text] is the text to be displayed on the button.
  const CustomElevatedButton({
    Key? key,
    this.decoration,
    this.leftIcon,
    this.rightIcon,
    EdgeInsets? margin,
    VoidCallback? onPressed,
    ButtonStyle? buttonStyle,
    Alignment? alignment,
    TextStyle? buttonTextStyle,
    bool? isDisabled,
    double? height,
    double? width,
    required String text,
  }) : super(
          key: key,
          text: text,
          onPressed: onPressed,
          buttonStyle: buttonStyle,
          isDisabled: isDisabled,
          buttonTextStyle: buttonTextStyle,
          height: height,
          width: width,
          alignment: alignment,
          margin: margin,
        );

  /// Defines the decoration of the button.
  final BoxDecoration? decoration;

  /// Widget to be displayed on the left side of the button text.
  final Widget? leftIcon;

  /// Widget to be displayed on the right side of the button text.
  final Widget? rightIcon;

  @override
  Widget build(BuildContext context) {
    // Check if alignment is provided, then use Align widget.
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: buildElevatedButtonWidget,
          )
        : buildElevatedButtonWidget;
  }

  /// Builds the elevated button widget with specified configurations.
  Widget get buildElevatedButtonWidget => Container(
        height: height ?? 44.myHeight,
        width: width ?? double.maxFinite,
        margin: margin,
        decoration: decoration,
        child: ElevatedButton(
          style: buttonStyle,
          onPressed: isDisabled ?? false ? null : onPressed ?? () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              leftIcon ?? const SizedBox.shrink(),
              Text(
                text,
                style: buttonTextStyle ??
                    CustomTextStyles.titleSmallOnPrimaryContainer,
              ),
              rightIcon ?? const SizedBox.shrink(),
            ],
          ),
        ),
      );
}
