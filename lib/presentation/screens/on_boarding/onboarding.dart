// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:bekam/presentation/screens/on_boarding/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:bekam/data/model/onboarding_model/onboarding_model.dart';
import 'package:bekam/presentation/screens/on_boarding/widgets/onboarding_item.dart';

@RoutePage()
class OnBoardingPage extends StatelessWidget {
  OnBoardingPage({super.key});

  List<OnBoardingModel> onBoardingModels = [
    OnBoardingModel(
        'assets/images/onBoarding/on_boarding_image1.png',
        "Diverse & sparkling food.",
        "We use the best local ingredients to create fresh and delicious food and drinks."),
    OnBoardingModel(
        'assets/images/onBoarding/on_boarding_image2.png',
        "Free shipping on all orders",
        "Free shipping on the primary order whilst the usage of CaPay fee method."),
    OnBoardingModel(
        'assets/images/onBoarding/on_boarding_image3.png',
        "+24K Restaurants",
        "Easily find your favorite food and have it delivered in record time."),
  ];

  var onBoardingController = PageController();

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
                        activeDotColor: Color.fromRGBO(239, 159, 39, 1),
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
