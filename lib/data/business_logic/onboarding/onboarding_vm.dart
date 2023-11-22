import 'package:bekam/core/utils/values.dart';
import 'package:bekam/data/model/onboarding_model/onboarding_model.dart';

/// A ViewModel class responsible for providing OnboardingModel instances.
class OnBoardingViewModel {
  /// Returns a list of OnboardingModel instances, each representing a screen in the onboarding process.
  static List<OnBoardingModel> getOnBoardingModels() {
    return [
      // 1 - Onboarding Screen
      OnBoardingModel(
        GlobalAppImages.onboardingImage1,
        "msg_diverse_sparkling",
        "msg_we_use_the_best",
      ),

      // 2 - Onboarding Screen
      OnBoardingModel(
        GlobalAppImages.onboardingImage2,
        'msg_free_shipping_on',
        "msg_free_shipping_on2",
      ),

      // 3 - Onboarding Screen
      OnBoardingModel(
        GlobalAppImages.onboardingImage3,
        "msg_24k_restaurants",
        "msg_easily_find_your",
      ),
    ];
  }
}
