// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:bekam/core/helper/localization_extension.dart';
import 'package:bekam/core/utils/values.dart';
import 'package:bekam/presentation/common_widget/custom_image_view.dart';
import 'package:bekam/presentation/widgets/home_page/popular&latest%20products/poduct_rate.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

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
          SizedBox(height: 17.myHeight),
          Row(
            children: [
              Text(
                "lbl_subway".tr(context),
                style: Get.textTheme.titleLarge,
              ),
              CustomImageView(
                imagePath: GlobalAppSVG.imgLocationTeal700,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(left: 2.myWidth),
              ),
            ],
          ),
          SizedBox(height: 6.myHeight),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_open".tr(context),
                style: CustomTextStyles.labelLargeTeal700,
              ),
              Container(
                height: 2.adaptSize,
                width: 2.adaptSize,
                margin: EdgeInsets.only(
                  left: 8.myWidth,
                  top: 6.myHeight,
                  bottom: 7.myHeight,
                ),
                decoration: BoxDecoration(
                  color: GlobalAppColors.gray40001,
                  borderRadius: BorderRadius.circular(
                    1.myWidth,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.myWidth),
                child: Text(
                  "msg_santa_nella_ca".tr(context),
                  style: Get.textTheme.labelLarge,
                ),
              ),
            ],
          ),
          SizedBox(height: 13.myHeight),
          Row(
            children: [
              const ProductRate(),
              Container(
                height: 2.adaptSize,
                width: 2.adaptSize,
                margin: EdgeInsets.only(
                  left: 8.myWidth,
                  top: 11.myHeight,
                  bottom: 11.myHeight,
                ),
                decoration: BoxDecoration(
                  color: GlobalAppColors.gray40001,
                  borderRadius: BorderRadius.circular(
                    1.myWidth,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.myWidth,
                  top: 3.myHeight,
                  bottom: 4.myHeight,
                ),
                child: Text(
                  "lbl_1_5km".tr(context),
                  style: CustomTextStyles.labelLargeBluegray900,
                ),
              ),
              Container(
                height: 2.adaptSize,
                width: 2.adaptSize,
                margin: EdgeInsets.only(
                  left: 8.myWidth,
                  top: 11.myHeight,
                  bottom: 11.myHeight,
                ),
                decoration: BoxDecoration(
                  color: GlobalAppColors.gray40001,
                  borderRadius: BorderRadius.circular(
                    1.myWidth,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.myWidth,
                  top: 5.myHeight,
                  bottom: 2.myHeight,
                ),
                child: Text(
                  "lbl_free_shipping".tr(context),
                  style: CustomTextStyles.labelLargeBluegray900,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
