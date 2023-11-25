part of values;

/// A class that provides paths to global image assets used throughout the application.
class GlobalAppImages {
  // Image folder path
  static String imagePath = 'assets/images';

  // 1 - Onboarding images
  /// Path to the first onboarding-1 image.
  static String onboardingImage1 =
      '$imagePath/onBoarding/on_boarding_image1.png';

  // 2 - Onboarding images
  /// Path to the second onboarding-2 image.
  static String onboardingImage2 =
      '$imagePath/onBoarding/on_boarding_image2.png';

  // 3 - Onboarding images
  /// Path to the third onboarding-3 image.
  static String onboardingImage3 =
      '$imagePath/onBoarding/on_boarding_image3.png';

   /// path to logo
  static String appLogo = '$imagePath/logo.png';
     
}

/// A class that provides paths to global SVGs assets used throughout the application.
class GlobalAppSVG {
  // Image folder path
  static String imagePath = 'assets/svg';

  /// Path to the second location svg image.
  static String locationSvg = '$imagePath/img_location_gray_400_01.svg';

  /// path to logo
  static String appLogo = '$imagePath/logo.svg';

  ///path to facebook logo
  static String imgFacebook = '$imagePath/img_facebook.svg';
  
  //path to google logo
  static String imgGoogle = '$imagePath/img_google.svg';
}
