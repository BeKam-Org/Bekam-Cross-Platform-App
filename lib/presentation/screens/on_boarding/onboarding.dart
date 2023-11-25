// 🐦 Flutter imports:
import 'package:bekam/core/router/auto_router.gr.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// 🌎 Project imports:
import 'package:bekam/core/helper/localization_extension.dart';
import 'package:bekam/core/utils/values.dart';
import 'package:bekam/data/business_logic/onboarding/onboarding_vm.dart';
import 'package:bekam/data/model/onboarding_model/onboarding_model.dart';
import 'package:bekam/presentation/common_widget/custom_elevated_button.dart';
import 'package:bekam/presentation/widgets/onboarding/onboarding_item.dart';

/// Widget representing the onboarding screen for the application.
@RoutePage()
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Controller for managing the onboarding page view.
    PageController onBoardingController = PageController();

    // List of onboarding models to display in the page view.
    final List<OnBoardingModel> onBoardingModels =
        OnBoardingViewModel.getOnBoardingModels();

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.sizeOf(context).height,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: GlobalAppSizes.s_20.myWidth,
            vertical: GlobalAppSizes.s_20.myHeight,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Expanded PageView for onboarding screens.
              Expanded(
                child: PageView.builder(
                  controller: onBoardingController,
                  physics: const BouncingScrollPhysics(),
                  itemCount: onBoardingModels.length,
                  itemBuilder: (context, index) {
                    return OnBoardingItem(
                      onBoardingModel: onBoardingModels[index],
                    );
                  },
                  onPageChanged: (value) {},
                ),
              ),
              // Indicator dots and Get Started button.
              Column(
                children: [
                  // SmoothPageIndicator for displaying dots indicating the current page.
                  SmoothPageIndicator(
                    onDotClicked: (index) {
                      onBoardingController.jumpToPage(index);
                    },
                    controller: onBoardingController,
                    count: onBoardingModels.length,
                    effect: const ExpandingDotsEffect(
                      dotHeight: GlobalAppSizes.s_5,
                      activeDotColor: GlobalAppColors.primaryColor,
                    ),
                  ),
                  SizedBox(height: 50.myHeight),
                  // CustomElevatedButton for the Get Started button.
                  CustomElevatedButton(
                    text: "lbl_get_started".tr(context),
                    onPressed: () {
                      AutoRouter.of(context).replace(const LoginRoute());
                    },
                  ),
                  SizedBox(height: GlobalAppSizes.s_5.myHeight),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
