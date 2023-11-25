import 'dart:math' show pow;

import 'package:bekam/presentation/widgets/home_nav/animated_nav_bart/animated_nav_bar.dart';
import 'package:flutter/material.dart';

/// The [AnimatedNavBarBaseButton] is a StatefulWidget that represents a customizable
/// button used in the [AnimatedNavBar]. It supports icon, text, and various styling
/// options.
///
/// The button responds to user interactions and animates its appearance based on the
/// provided parameters such as icon, text, color, gradient, etc. It uses [InkWell]
/// for tap interactions and includes animations for button expansion and color changes.
class AnimatedNavBarBaseButton extends StatefulWidget {
  const AnimatedNavBarBaseButton({
    Key? key,
    this.icon,
    this.iconSize,
    this.leading,
    this.iconActiveColor,
    this.iconColor,
    this.text,
    this.gap,
    this.color,
    this.rippleColor,
    this.hoverColor,
    required this.onPressed,
    this.duration,
    this.curve,
    this.padding,
    this.margin,
    required this.active,
    this.debug,
    this.gradient,
    this.borderRadius,
    this.border,
    this.activeBorder,
    this.shadow,
    this.style = MyNavBarStyle.google,
    this.textSize,
  }) : super(key: key);

  final IconData? icon;
  final double? iconSize;
  final Text? text;
  final Widget? leading;
  final Color? iconActiveColor;
  final Color? iconColor;
  final Color? color;
  final Color? rippleColor;
  final Color? hoverColor;
  final double? gap;
  final bool? active;
  final bool? debug;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Duration? duration;
  final Curve? curve;
  final Gradient? gradient;
  final BorderRadius? borderRadius;
  final Border? border;
  final Border? activeBorder;
  final List<BoxShadow>? shadow;
  final MyNavBarStyle? style;
  final double? textSize;

  @override
  // ignore: library_private_types_in_public_api
  _AnimatedNavBarBaseButtonState createState() =>
      _AnimatedNavBarBaseButtonState();
}

class _AnimatedNavBarBaseButtonState extends State<AnimatedNavBarBaseButton>
    with TickerProviderStateMixin {
  late bool _expanded;
  late final AnimationController expandController;

  @override
  void initState() {
    super.initState();
    _expanded = widget.active!;

    expandController =
        AnimationController(vsync: this, duration: widget.duration)
          ..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    expandController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Animation logic for button expansion and color change
    var curveValue = expandController
        .drive(CurveTween(
            curve: _expanded ? widget.curve! : widget.curve!.flipped))
        .value;
    var colorTween =
        ColorTween(begin: widget.iconColor, end: widget.iconActiveColor);
    var colorTweenAnimation = colorTween.animate(CurvedAnimation(
        parent: expandController,
        curve: _expanded ? Curves.easeInExpo : Curves.easeOutCirc));

    // Toggle expanded state
    _expanded = !widget.active!;
    if (_expanded) {
      expandController.reverse();
    } else {
      expandController.forward();
    }

    // Widget representing the button
    Widget icon = widget.leading ??
        Icon(widget.icon,
            color: colorTweenAnimation.value, size: widget.iconSize);

    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        highlightColor: widget.hoverColor,
        splashColor: widget.rippleColor,
        borderRadius: widget.borderRadius,
        onTap: widget.onPressed,
        child: Container(
          padding: widget.margin,
          child: AnimatedContainer(
            curve: Curves.easeOut,
            padding: widget.padding,
            duration: widget.duration!,
            decoration: BoxDecoration(
              boxShadow: widget.shadow,
              border: widget.active!
                  ? (widget.activeBorder ?? widget.border)
                  : widget.border,
              gradient: widget.gradient,
              color: _expanded
                  ? widget.color!.withOpacity(0)
                  : widget.debug!
                      ? Colors.red
                      : widget.gradient != null
                          ? Colors.white
                          : widget.color,
              borderRadius: widget.borderRadius,
            ),
            child: FittedBox(
              fit: BoxFit.fitHeight,
              child: Builder(
                builder: (_) {
                  if (widget.style == MyNavBarStyle.google) {
                    return Stack(
                      children: [
                        if (widget.text!.data != '')
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Opacity(
                                  opacity: 0,
                                  child: icon,
                                ),
                                Align(
                                    alignment: Alignment.centerRight,
                                    widthFactor: curveValue,
                                    child: Opacity(
                                        opacity: _expanded
                                            ? pow(expandController.value, 13)
                                                as double
                                            : expandController
                                                .drive(CurveTween(
                                                    curve: Curves.easeIn))
                                                .value,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: widget.gap! +
                                                  8 -
                                                  (8 *
                                                      expandController
                                                          .drive(CurveTween(
                                                              curve: Curves
                                                                  .easeOutSine))
                                                          .value),
                                              right: 8 *
                                                  expandController
                                                      .drive(CurveTween(
                                                          curve: Curves
                                                              .easeOutSine))
                                                      .value),
                                          child: widget.text,
                                        ))),
                              ]),
                        Align(alignment: Alignment.centerLeft, child: icon),
                      ],
                    );
                  } else if (widget.style == MyNavBarStyle.oldSchool) {
                    return Column(
                      children: [
                        icon,
                        Container(
                          padding: EdgeInsets.only(top: widget.gap!),
                          child: Text(
                            widget.text!.data!,
                            style: TextStyle(
                              color: colorTweenAnimation.value,
                              fontSize: widget.textSize ?? 16,
                            ),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
