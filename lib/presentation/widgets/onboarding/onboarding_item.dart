import 'package:bekam/core/helper/localization_extension.dart';
import 'package:bekam/core/utils/values.dart';
import 'package:bekam/data/model/onboarding_model/onboarding_model.dart';
import 'package:bekam/presentation/common_widget/custom_image_view.dart';
import 'package:flutter/material.dart';

/// This widget prefer to onBoarding item that show image , title , description by it .
class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({
    super.key,
    required this.onBoardingModel,
  });
  final OnBoardingModel onBoardingModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: onBoardingModel.imageUrl,
            height: 350.myHeight,
            width: 350.myHeight,
          ),
          Text(
            "${onBoardingModel.title}".tr(context),
            textAlign: TextAlign.center,
            style: Get.textTheme.headlineSmall,
          ),
          Container(
            width: 273.myWidth,
            margin: EdgeInsets.only(
              left: 15.myWidth,
              right: 18.myWidth,
            ),
            child: Text(
              "${onBoardingModel.description}".tr(context),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyMediumBluegray40001_3.copyWith(
                fontSize: 20.fSize,
                height: 2.myHeight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
