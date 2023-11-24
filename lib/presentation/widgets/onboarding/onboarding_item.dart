// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:bekam/core/helper/localization_extension.dart';
import 'package:bekam/core/utils/values.dart';
import 'package:bekam/data/model/onboarding_model/onboarding_model.dart';
import 'package:bekam/presentation/common_widget/custom_image_view.dart';

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
            height: GlobalAppSizes.s_350.myHeight,
            width: GlobalAppSizes.s_350.myHeight,
          ),
          Column(
            children: [
              Text(
                "${onBoardingModel.title}".tr(context),
                textAlign: TextAlign.center,
                style: Get.textTheme.headlineSmall!.copyWith(                ),
              ),
              SizedBox(
                height: GlobalAppSizes.s_10.myHeight,
              ),
              Text(
                "${onBoardingModel.description}".tr(context),
                maxLines: GlobalAppSizes.s_3.toInt(),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyMediumBluegray40001_3.copyWith(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
