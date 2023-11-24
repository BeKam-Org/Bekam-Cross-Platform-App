// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:bekam/core/utils/values.dart';

/// A custom widget representing a text title for the app bar.
///
/// This widget is wrapped in a [GestureDetector] to provide a tap interaction.
class AppbarTitle extends StatelessWidget {
  /// Creates an [AppbarTitle] widget.
  ///
  /// The [text] parameter specifies the text content of the title.
  /// The [margin] parameter controls the spacing around the widget.
  /// The [onTap] parameter is a callback function triggered when the widget is tapped.
  const AppbarTitle({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(key: key);

  /// The text content of the title.
  final String text;

  /// The spacing around the widget.
  final EdgeInsetsGeometry? margin;

  /// The callback function triggered when the widget is tapped.
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: Get.textTheme.titleMedium!.copyWith(
            color: GlobalAppColors.blueGray900,
          ),
        ),
      ),
    );
  }
}
