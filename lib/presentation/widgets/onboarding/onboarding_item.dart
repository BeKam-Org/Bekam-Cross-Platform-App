import 'package:bekam/data/model/onboarding_model/onboarding_model.dart';
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
        children: [
          // CustomImageView(
          //   imagePath: ImageConstant.imgFrameDeepOrange50,
          //   height: 305.adaptSize,
          //   width: 305.adaptSize,
          // ),
          Text(
            onBoardingModel.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'DM Sans',
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            onBoardingModel.description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'DM Sans',
              fontSize: 14,
              color: Color.fromRGBO(122, 134, 154, 1),
            ),
          ),
        ],
      ),
    );
  }
}
