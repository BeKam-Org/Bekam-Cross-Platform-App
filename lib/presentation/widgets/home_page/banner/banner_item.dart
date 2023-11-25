import 'package:bekam/core/utils/values.dart';
import 'package:bekam/presentation/common_widget/custom_image_view.dart';
import 'package:flutter/material.dart';

class BannerItem extends StatelessWidget {
  const BannerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.myWidth, right: 10.myWidth),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: GlobalAppImages.imgImportImage116x205,
            height: 116.myHeight,
            width: 205.myWidth,
            radius: BorderRadius.circular(
              15.myWidth,
            ),
          ),
        ],
      ),
    );
  }
}
