import 'package:bekam/core/utils/values.dart';
import 'package:bekam/presentation/common_widget/custom_image_view.dart';
import 'package:flutter/material.dart';

/// A custom widget representing an image used as the leading icon in the app bar.
///
/// This widget is wrapped in an [InkWell] to provide a tap interaction.
class AppbarLeadingImage extends StatelessWidget {
  /// Creates an [AppbarLeadingImage] widget.
  ///
  /// The [imagePath] parameter specifies the path to the image asset.
  /// The [margin] parameter controls the spacing around the widget.
  /// The [onTap] parameter is a callback function triggered when the widget is tapped.
  const AppbarLeadingImage({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  /// The path to the image asset.
  final String? imagePath;

  /// The spacing around the widget.
  final EdgeInsetsGeometry? margin;

  /// The callback function triggered when the widget is tapped.
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!.call();
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
