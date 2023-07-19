import 'package:bekam/core/utils/values.dart';
import 'package:bekam/data/model/onboarding_model.dart';
import 'package:bekam/presentation/widgets/onboarding/image_sector.dart';
import 'package:flutter/material.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final OnboardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: model.backGroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ImagesSector(image: model.imagePath),
          Column(
            children: [
              Text(
                model.title,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: GlobalAppColors.appBlue),
              ),
              Text(
                model.subTitle,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: GlobalAppColors.kScaffoldDark,
                    height: GlobalAppSizes.s_6 / GlobalAppSizes.s_5),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
          Text(
            model.counterText,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 80.0,
          )
        ],
      ),
    );
  }
}
