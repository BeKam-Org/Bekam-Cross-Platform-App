// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import 'package:bekam/core/utils/values.dart';

/// A custom app bar widget with customizable parameters.
///
/// This widget is designed to be used as the app bar in a Flutter app.
/// It provides flexibility in customizing the app bar's appearance, including
/// its height, leading widget, title, centering of the title, and additional actions.
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// Creates a [CustomAppBar] instance.
  ///
  /// The [height] parameter specifies the height of the app bar.
  /// The [leadingWidth] parameter specifies the width of the leading widget.
  /// The [leading] parameter is the widget to be placed at the leading edge of the app bar.
  /// The [title] parameter is the widget to be displayed in the center of the app bar.
  /// The [centerTitle] parameter controls whether the title should be centered.
  /// The [actions] parameter is a list of widgets to be placed at the trailing edge of the app bar.
  const CustomAppBar({
    Key? key,
    this.height,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(key: key);

  /// The height of the app bar. If not specified, it defaults to the value of `24.v`.
  final double? height;

  /// The width of the leading widget. If not specified, it defaults to 0.
  final double? leadingWidth;

  /// The widget to be placed at the leading edge of the app bar.
  final Widget? leading;

  /// The widget to be displayed in the center of the app bar.
  final Widget? title;

  /// Whether the title should be centered. If not specified, it defaults to `false`.
  final bool? centerTitle;

  /// A list of widgets to be placed at the trailing edge of the app bar.
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation:  GlobalAppSizes.s_0,
      toolbarHeight: height ??  GlobalAppSizes.s_24.myHeight,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      leadingWidth: leadingWidth ??  GlobalAppSizes.s_0,
      leading: leading,
      title: title,
      titleSpacing:  GlobalAppSizes.s_0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        ScreenUtil().screenWidth,
        height ?? 24.myHeight,
      );
}
