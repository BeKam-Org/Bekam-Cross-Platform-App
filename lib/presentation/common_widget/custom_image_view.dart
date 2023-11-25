// ignore_for_file: must_be_immutable

// 🎯 Dart imports:
import 'dart:io';

// 🐦 Flutter imports:
import 'package:bekam/core/utils/values.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// A customizable image view widget that supports different image types (SVG, PNG, network, file).
class CustomImageView extends StatelessWidget {
  /// The path to the image. It can be a network URL, file path, or asset path.
  final String? imagePath;

  /// The height of the image.
  final double? height;

  /// The width of the image.
  final double? width;

  /// The color to apply to the image.
  final Color? color;

  /// The BoxFit property to control how the image is fitted into its box.
  final BoxFit? fit;

  /// The alignment of the image within its box.
  final Alignment? alignment;

  /// Callback function triggered when the image is tapped.
  final VoidCallback? onTap;

  /// The margin around the image.
  final EdgeInsetsGeometry? margin;

  /// The border radius to apply to the image.
  final BorderRadius? radius;

  /// The border style to apply to the image.
  final BoxBorder? border;

  /// The placeholder image to display if the main image is not available.
  final String placeHolder;

  /// Creates a [CustomImageView] instance.
  const CustomImageView({
    Key? key,
    this.imagePath,
    this.height,
    this.width,
    this.color,
    this.fit,
    this.alignment,
    this.onTap,
    this.margin,
    this.radius,
    this.border,
    this.placeHolder = 'assets/images/image_not_found.png',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildWidget(),
          )
        : _buildWidget();
  }

  Widget _buildWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: InkWell(
        onTap: onTap,
        child: _buildCircleImage(),
      ),
    );
  }

  Widget _buildCircleImage() {
    if (radius != null) {
      return ClipRRect(
        borderRadius: radius!,
        child: _buildImageWithBorder(),
      );
    } else {
      return _buildImageWithBorder();
    }
  }

  Widget _buildImageWithBorder() {
    if (border != null) {
      return Container(
        decoration: BoxDecoration(
          border: border,
          borderRadius: radius,
        ),
        child: _buildImageView(),
      );
    } else {
      return _buildImageView();
    }
  }

  Widget _buildImageView() {
    if (imagePath != null) {
      switch (imagePath!.imageType) {
        case ImageType.svg:
          return SizedBox(
            height: height,
            width: width,
            child: SvgPicture.asset(
              imagePath!,
              height: height,
              width: width,
              fit: fit ?? BoxFit.contain,
            ),
          );
        case ImageType.file:
          return Image.file(
            File(imagePath!),
            height: height,
            width: width,
            fit: fit ?? BoxFit.cover,
            color: color,
          );
        case ImageType.network:
          return CachedNetworkImage(
            height: height,
            width: width,
            fit: fit,
            imageUrl: imagePath!,
            color: color,
            placeholder: (context, url) => SizedBox(
              height:  GlobalAppSizes.s_30,
              width:  GlobalAppSizes.s_30,
              child: LinearProgressIndicator(
                color: Colors.grey.shade200,
                backgroundColor: Colors.grey.shade100,
              ),
            ),
            errorWidget: (context, url, error) => Image.asset(
              placeHolder,
              height: height,
              width: width,
              fit: fit ?? BoxFit.cover,
            ),
          );
        case ImageType.png:
        default:
          return Image.asset(
            imagePath!,
            height: height,
            width: width,
            fit: fit ?? BoxFit.cover,
            color: color,
          );
      }
    }
    return const SizedBox();
  }
}

/// An extension on [String] to determine the image type based on its path.
extension ImageTypeExtension on String {
  ImageType get imageType {
    if (startsWith('http') || startsWith('https')) {
      return ImageType.network;
    } else if (endsWith('.svg')) {
      return ImageType.svg;
    } else if (startsWith('file://')) {
      return ImageType.file;
    } else {
      return ImageType.png;
    }
  }
}

/// An enumeration representing different image types.
enum ImageType { svg, png, network, file, unknown }
