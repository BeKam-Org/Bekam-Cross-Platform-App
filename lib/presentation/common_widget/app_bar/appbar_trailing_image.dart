import 'package:bekam/core/utils/values.dart';
import 'package:bekam/presentation/common_widget/custom_image_view.dart';
import 'package:flutter/material.dart';

/// A custom widget for displaying an image in the app bar as a trailing icon.
///
/// This widget is designed to be used within the AppBar widget of a Flutter app.
/// It includes an image that can be tapped, triggering a callback function.
class AppbarTrailingImage extends StatelessWidget {
  /// Creates an instance of [AppbarTrailingImage].
  ///
  /// The [imagePath] parameter specifies the path to the image asset.
  /// The [margin] parameter controls the margin around the widget.
  /// The [onTap] parameter is a callback function triggered when the image is tapped.
  const AppbarTrailingImage({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(key: key);

  /// The path to the image asset.
  final String? imagePath;

  /// The margin around the widget. If not specified, it defaults to zero.
  final EdgeInsetsGeometry? margin;

  /// A callback function triggered when the image is tapped.
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Ensure the onTap callback is not null before calling it
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: 24.adaptSize,
          width: 24.adaptSize,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
