// 🐦 Flutter imports:
import 'package:flutter/material.dart';

/// A customizable base button widget that can be used as a foundation for different button types.
class BaseButton extends StatelessWidget {
  /// Creates a [BaseButton].
  ///
  /// [key] is an optional parameter to provide a key to this widget.
  /// [text] is the text to be displayed on the button.
  /// [onPressed] is a callback function triggered when the button is pressed.
  /// [buttonStyle] defines the visual appearance of the button.
  /// [buttonTextStyle] defines the style of the text within the button.
  /// [isDisabled] indicates whether the button is disabled.
  /// [height] sets the height of the button.
  /// [width] sets the width of the button.
  /// [margin] sets the margin of the button.
  /// [alignment] sets the alignment of the button within its parent.
  const BaseButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.buttonStyle,
    this.buttonTextStyle,
    this.isDisabled,
    this.height,
    this.width,
    this.margin,
    this.alignment,
  }) : super(key: key);

  /// The text to be displayed on the button.
  final String text;

  /// A callback function triggered when the button is pressed.
  final VoidCallback? onPressed;

  /// Defines the visual appearance of the button.
  final ButtonStyle? buttonStyle;

  /// Defines the style of the text within the button.
  final TextStyle? buttonTextStyle;

  /// Indicates whether the button is disabled.
  final bool? isDisabled;

  /// Sets the height of the button.
  final double? height;

  /// Sets the width of the button.
  final double? width;

  /// Sets the margin of the button.
  final EdgeInsets? margin;

  /// Sets the alignment of the button within its parent.
  final Alignment? alignment;

  @override
  Widget build(BuildContext context) {
    // Placeholder widget. Replace with the actual button implementation.
    return const SizedBox.shrink();
  }
}
