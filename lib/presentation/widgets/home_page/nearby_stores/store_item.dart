// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:bekam/core/utils/values.dart';
import 'package:bekam/data/model/store_model/store_model.dart';
import 'package:bekam/presentation/common_widget/custom_image_view.dart';

class StoreItem extends StatelessWidget {
  const StoreItem(
    this.vectorItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  final StoreModel vectorItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.myWidth),
      decoration: GlobalAppDecoration.fillPrimary.copyWith(
          borderRadius: GlobalAppBorderRadius.roundedBorder15,
          color: GlobalAppColors.blueGray900.withOpacity(0.1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 190.myHeight,
            width: 140.myWidth,
            padding: EdgeInsets.symmetric(
              horizontal: 25.myWidth,
              vertical: 50.myHeight,
            ),
            decoration: GlobalAppDecoration.gradientTealToGreenAf.copyWith(
              borderRadius: GlobalAppBorderRadius.circleBorder12,
            ),
            child: CustomImageView(
              imagePath: vectorItemModelObj.vector,
              height: 90.adaptSize,
              width: 90.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 12.myHeight),
          Row(
            children: [
              Text(
                vectorItemModelObj.nameMarket!,
                style: Get.textTheme.bodyLarge,
              ),
              CustomImageView(
                imagePath: GlobalAppSVG.imgLocationTeal700,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(left: 2.myWidth),
              ),
            ],
          ),
          SizedBox(height: 5.myHeight),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 1.myHeight),
                child: Text(
                  vectorItemModelObj.status!,
                  style: CustomTextStyles.labelLargeTeal700,
                ),
              ),
              Container(
                height: 2.adaptSize,
                width: 2.adaptSize,
                margin: EdgeInsets.only(
                  left: 8.myWidth,
                  top: 7.myHeight,
                  bottom: 8.myHeight,
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
                  vectorItemModelObj.infoOne!,
                  style: Get.textTheme.labelLarge,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
