// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:bekam/data/repository/onboarding/onboarding_repository.dart';
import 'package:bekam/presentation/widgets/onboarding/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:bekam/data/model/onboarding_model/onboarding_model.dart';
import 'package:bekam/presentation/widgets/onboarding/onboarding_item.dart';

@RoutePage()
class OnBoardingPage extends StatelessWidget {
  OnBoardingPage({super.key});

  var onBoardingController = PageController();
  final List<OnBoardingModel> onBoardingModels =
      OnboardingRepository().getOnBoardingModels();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: onBoardingController,
                physics: BouncingScrollPhysics(),
                itemCount: onBoardingModels.length,
                itemBuilder: (context, index) {
                  return OnBoardingItem(
                    onBoardingModel: onBoardingModels[index],
                  );
                },
                onPageChanged: (value) {},
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SmoothPageIndicator(
                      onDotClicked: (index) {
                        onBoardingController.jumpToPage(index);
                      },
                      controller: onBoardingController,
                      count: onBoardingModels.length,
                      effect: ExpandingDotsEffect(
                        dotHeight: 5,
                        activeDotColor: Color.fromRGBO(144, 168, 88, 1),
                      ),
                    ),
                    CustomButton(
                      title: "Get started",
                      onPressed: () {},
                      width: double.infinity,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}