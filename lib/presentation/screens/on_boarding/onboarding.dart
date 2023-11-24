// 🐦 Flutter imports:
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

@RoutePage()
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    PageController onBoardingController = PageController();
    final List<OnBoardingModel> onBoardingModels =
        OnBoardingViewModel.getOnBoardingModels();

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.sizeOf(context).height,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.myWidth,
            vertical: 20.myHeight,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
              Column(
                children: [
                  SmoothPageIndicator(
                    onDotClicked: (index) {
                      onBoardingController.jumpToPage(index);
                    },
                    controller: onBoardingController,
                    count: onBoardingModels.length,
                    effect: const ExpandingDotsEffect(
                      dotHeight: 5,
                      activeDotColor: Color.fromRGBO(144, 168, 88, 1),
                    ),
                  ),
                  SizedBox(height: 50.myHeight),
                  CustomElevatedButton(
                    text: "lbl_get_started".tr(context),
                  ),
                  SizedBox(height: 5.myHeight),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
