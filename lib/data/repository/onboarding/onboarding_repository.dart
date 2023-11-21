import 'package:bekam/data/model/onboarding_model/onboarding_model.dart';

class OnboardingRepository {
  List<OnBoardingModel> getOnBoardingModels() {
    return [
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
  }
}
/*  List<OnBoardingModel> onBoardingModels = [
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
  ];*/