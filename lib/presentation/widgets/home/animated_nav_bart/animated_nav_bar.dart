import 'package:flutter/material.dart';

import 'animated_nav_bar_btn.dart';

/// Enumeration for different styles of the navigation bar.
enum MyNavBarStyle {
  google,
  oldSchool,
}
/// The [AnimatedNavBar] is a StatefulWidget that represents a custom animated
/// navigation bar with customizable tabs. It allows for a smooth transition
/// between selected and unselected states.
class AnimatedNavBar extends StatefulWidget {
  const AnimatedNavBar({
    Key? key,
    required this.tabs,
    this.selectedIndex = 0,
    this.onTabChange,
    this.gap = 0,
    this.padding = const EdgeInsets.all(25),
    this.activeColor,
    this.color,
    this.rippleColor = Colors.transparent,
    this.hoverColor = Colors.transparent,
    this.backgroundColor = Colors.transparent,
    this.tabBackgroundColor = Colors.transparent,
    this.tabBorderRadius = 100.0,
    this.iconSize,
    this.textStyle,
    this.curve = Curves.easeInCubic,
    this.tabMargin = EdgeInsets.zero,
    this.debug = false,
    this.duration = const Duration(milliseconds: 500),
    this.tabBorder,
    this.tabActiveBorder,
    this.tabShadow,
    this.haptic = true,
    this.tabBackgroundGradient,
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
    this.style = MyNavBarStyle.google,
    this.textSize,
  }) : super(key: key);

  /// List of [AnimatedNavBarButton] tabs within the navigation bar.
  final List<AnimatedNavBarButton> tabs;

  /// The index of the initially selected tab.
  final int selectedIndex;

  /// Callback function when a tab is changed.
  final ValueChanged<int>? onTabChange;

  /// The space between tabs.
  final double gap;

  /// The padding around the entire navigation bar.
  final EdgeInsetsGeometry padding;

  /// The margin around each btn.
  final EdgeInsetsGeometry tabMargin;

  /// The color when a tab is active.
  final Color? activeColor;

  /// The background color of the navigation bar.
  final Color backgroundColor;

  /// The background color of each tab.
  final Color tabBackgroundColor;

  /// The color of the text/icon when a tab is not selected.
  final Color? color;

  /// The color of the ripple effect when tapping on a tab.
  final Color rippleColor;

  /// The color when hovering over a tab.
  final Color hoverColor;

  /// The border radius of each tab.
  final double tabBorderRadius;

  /// The size of the icons within the tabs.
  final double? iconSize;

  /// The text style of the text within the tabs.
  final TextStyle? textStyle;

  /// The duration of the animation when switching tabs.
  final Duration duration;

  /// The curve of the animation when switching tabs.
  final Curve curve;

  /// Debug mode for development purposes.
  final bool debug;

  /// Haptic feedback when tapping on a tab.
  final bool haptic;

  /// The border of each tab.
  final Border? tabBorder;

  /// The border of each tab when active.
  final Border? tabActiveBorder;

  /// The shadow of each tab.
  final List<BoxShadow>? tabShadow;

  /// The gradient background of each tab.
  final Gradient? tabBackgroundGradient;

  /// The alignment of tabs within the navigation bar.
  final MainAxisAlignment mainAxisAlignment;

  /// The style of the navigation bar (Google or Old School).
  final MyNavBarStyle? style;

  /// The size of the text within the tabs.
  final double? textSize;

  @override
  // ignore: library_private_types_in_public_api
  _AnimatedNavBarState createState() => _AnimatedNavBarState();
}

class _AnimatedNavBarState extends State<AnimatedNavBar> {
  late int selectedIndex;
  bool clickable = true;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.selectedIndex;
  }

  @override
  void didUpdateWidget(AnimatedNavBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.selectedIndex != oldWidget.selectedIndex) {
      selectedIndex = widget.selectedIndex;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: widget.backgroundColor,
        child: Row(
            mainAxisAlignment: widget.mainAxisAlignment,
            children: widget.tabs
                .map((t) => AnimatedNavBarButton(
                      textSize: widget.textSize,
                      style: widget.style,
                      key: t.key,
                      border: t.border ?? widget.tabBorder,
                      activeBorder: t.activeBorder ?? widget.tabActiveBorder,
                      shadow: t.shadow ?? widget.tabShadow,
                      borderRadius: t.borderRadius ??
                          BorderRadius.all(
                            Radius.circular(widget.tabBorderRadius),
                          ),
                      debug: widget.debug,
                      margin: t.margin ?? widget.tabMargin,
                      active: selectedIndex == widget.tabs.indexOf(t),
                      gap: t.gap ?? widget.gap,
                      iconActiveColor: t.iconActiveColor ?? widget.activeColor,
                      iconColor: t.iconColor ?? widget.color,
                      iconSize: t.iconSize ?? widget.iconSize,
                      textColor: t.textColor ?? widget.activeColor,
                      rippleColor: t.rippleColor ?? widget.rippleColor,
                      hoverColor: t.hoverColor ?? widget.hoverColor,
                      padding: t.padding ?? widget.padding,
                      textStyle: t.textStyle ?? widget.textStyle,
                      text: t.text,
                      icon: t.icon,
                      haptic: widget.haptic,
                      leading: t.leading,
                      curve: widget.curve,
                      backgroundGradient:
                          t.backgroundGradient ?? widget.tabBackgroundGradient,
                      backgroundColor:
                          t.backgroundColor ?? widget.tabBackgroundColor,
                      duration: widget.duration,
                      onPressed: () {
                        if (!clickable) return;
                        setState(() {
                          selectedIndex = widget.tabs.indexOf(t);
                          clickable = false;
                        });

                        t.onPressed?.call();

                        widget.onTabChange?.call(selectedIndex);

                        Future.delayed(widget.duration, () {
                          setState(() {
                            clickable = true;
                          });
                        });
                      },
                    ))
                .toList()));
  }
}
