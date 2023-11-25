// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show HapticFeedback;

// 🌎 Project imports:
import 'package:bekam/presentation/widgets/home_nav/animated_nav_bart/animated_nav_bar.dart';
import 'animated_nav_bar_base_btn.dart';

/// The [AnimatedNavBarButton] is a StatefulWidget that represents a button
/// within the [AnimatedNavBar]. It provides customization options for icon,
/// text, colors, and other styling properties.
class AnimatedNavBarButton extends StatefulWidget {
  final bool? active;
  final bool? debug;
  final bool? haptic;
  final double? gap;
  final Color? iconColor;
  final Color? rippleColor;
  final Color? hoverColor;
  final Color? iconActiveColor;
  final Color? textColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final TextStyle? textStyle;
  final double? iconSize;
  final Function? onPressed;
  final String text;
  final IconData icon;
  final Color? backgroundColor;
  final Duration? duration;
  final Curve? curve;
  final Gradient? backgroundGradient;
  final Widget? leading;
  final BorderRadius? borderRadius;
  final Border? border;
  final Border? activeBorder;
  final List<BoxShadow>? shadow;
  final String? semanticLabel;
  final MyNavBarStyle? style;
  final double? textSize;

  const AnimatedNavBarButton({
    Key? key,
    this.active,
    this.haptic,
    this.backgroundColor,
    required this.icon,
    this.iconColor,
    this.rippleColor,
    this.hoverColor,
    this.iconActiveColor,
    this.text = '',
    this.textColor,
    this.padding,
    this.margin,
    this.duration,
    this.debug,
    this.gap,
    this.curve,
    this.textStyle,
    this.iconSize,
    this.leading,
    this.onPressed,
    this.backgroundGradient,
    this.borderRadius,
    this.border,
    this.activeBorder,
    this.shadow,
    this.semanticLabel,
    this.style = MyNavBarStyle.google,
    this.textSize,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AnimatedNavBarButtonState createState() => _AnimatedNavBarButtonState();
}

class _AnimatedNavBarButtonState extends State<AnimatedNavBarButton> {
  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: widget.semanticLabel ?? widget.text,
      child: AnimatedNavBarBaseButton(
        textSize: widget.textSize,
        style: widget.style,
        borderRadius: widget.borderRadius,
        border: widget.border,
        activeBorder: widget.activeBorder,
        shadow: widget.shadow,
        debug: widget.debug,
        duration: widget.duration,
        iconSize: widget.iconSize,
        active: widget.active,
        onPressed: () {
          if (widget.haptic!) HapticFeedback.selectionClick();
          widget.onPressed?.call();
        },
        padding: widget.padding,
        margin: widget.margin,
        gap: widget.gap,
        color: widget.backgroundColor,
        rippleColor: widget.rippleColor,
        hoverColor: widget.hoverColor,
        gradient: widget.backgroundGradient,
        curve: widget.curve,
        leading: widget.leading,
        iconActiveColor: widget.iconActiveColor,
        iconColor: widget.iconColor,
        icon: widget.icon,
        text: Text(
          widget.text,
          style: widget.textStyle ??
              TextStyle(
                fontWeight: FontWeight.w600,
                color: widget.textColor,
              ),
        ),
      ),
    );
  }
}
