import 'package:bekam/core/utils/values.dart';
import 'package:flutter/material.dart';

/// A custom button widget with customizable parameters, including alignment, size,
/// padding, decoration, and a callback function for tap events.
///
/// This widget is designed to provide a flexible way to create custom buttons
/// with various styles and sizes.
class CustomIconButton extends StatelessWidget {
  /// Creates a [CustomIconButton] instance.
  ///
  /// The [alignment] parameter specifies the alignment of the button.
  /// The [height] and [width] parameters specify the size of the button.
  /// The [padding] parameter defines the padding around the button's content.
  /// The [decoration] parameter defines the visual appearance of the button.
  /// The [child] parameter is the widget to be displayed inside the button.
  /// The [onTap] parameter is a callback function triggered when the button is tapped.
  const CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(key: key);

  /// The alignment of the button. If not specified, it defaults to center.
  final Alignment? alignment;

  /// The height of the button. If not specified, it defaults to 0.
  final double? height;

  /// The width of the button. If not specified, it defaults to 0.
  final double? width;

  /// The padding around the button's content. If not specified, it defaults to zero padding.
  final EdgeInsetsGeometry? padding;

  /// The visual appearance of the button. If not specified, it defaults to a yellow rounded box.
  final BoxDecoration? decoration;

  /// The widget to be displayed inside the button.
  final Widget? child;

  /// A callback function triggered when the button is tapped.
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: GlobalAppColors.amber10001,
                  borderRadius: BorderRadius.circular(20.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border styles.
extension IconButtonStyleHelper on CustomIconButton {
  /// A decoration style for filling the button with yellow color and a specific opacity.
  static BoxDecoration get fillYellow => BoxDecoration(
        color: GlobalAppColors.yellow800.withOpacity(0.8),
        borderRadius: BorderRadius.circular(12.h),
      );

  /// A decoration style for filling the button with teal color.
  static BoxDecoration get fillTeal => BoxDecoration(
        color: GlobalAppColors.teal400,
        borderRadius: BorderRadius.circular(20.h),
      );

  /// A decoration style for filling the button with yellow color and a specific opacity,
  /// with a larger border radius.
  static BoxDecoration get fillYellowTL20 => BoxDecoration(
        color: GlobalAppColors.yellow800.withOpacity(0.5),
        borderRadius: BorderRadius.circular(20.h),
      );
}
