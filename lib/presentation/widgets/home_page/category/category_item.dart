import 'package:bekam/core/helper/localization_extension.dart';
import 'package:bekam/core/utils/values.dart';
import 'package:bekam/presentation/common_widget/custom_image_view.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5.myWidth, right: 5.myWidth),
      decoration: BoxDecoration(
        borderRadius: GlobalAppBorderRadius.roundedBorder15,
      ),
      child: Column(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: const EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
              borderRadius: GlobalAppBorderRadius.roundedBorder15,
            ),
            child: Container(
              height: 100.myHeight,
              width: 83.myWidth,
              decoration: BoxDecoration(
                borderRadius: GlobalAppBorderRadius.roundedBorder15,
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: ShapeDecoration(
                      color: GlobalAppColors.primaryColor.withOpacity(0.8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: GlobalAppSVG.imgFlag,
                    height: 47.myHeight,
                    width: 52.myWidth,
                    radius: BorderRadius.circular(
                      15.myWidth,
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 11.myHeight),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 12.myWidth),
              child: Text(
                "lbl_burgers".tr(context),
                style: CustomTextStyles.labelLargeBluegray900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
