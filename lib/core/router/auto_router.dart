// 📦 Package imports:
import 'package:auto_route/auto_route.dart';

// 🌎 Project imports:
import 'auto_router.gr.dart';

/// Configures and manages the app's routing using AutoRoute.
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  /// Overrides the routes method to define app routes.
  @override
  List<AutoRoute> get routes => [
        /// CustomRoute is used to define a custom route configuration.
        /// a route with the path '/' is configured to navigate to the 'OnBoardingRoute' page.
        CustomRoute(
          path: '/',
          page: OnBoardingRoute.page,

          /// TransitionsBuilder determines how the page transition animation should be performed.
          /// In this case, the 'slideBottom' transition is used, meaning the new page will slide up from the bottom.
          transitionsBuilder: TransitionsBuilders.slideBottom,

          /// DurationInMilliseconds specifies the duration of the transition animation in milliseconds.
          /// The value of 400 indicates a duration of 400 milliseconds for the slide animation.
          durationInMilliseconds: 400,
        ),

        /// CustomRoute is used to define a custom route configuration.
        /// a route with the path '/register/login' is configured to navigate to the 'LoginRoute' page.
        CustomRoute(
          path: '/register/login',
          page: LoginRoute.page,

          /// TransitionsBuilder determines how the page transition animation should be performed.
          /// In this case, the 'slideBottom' transition is used, meaning the new page will slide up from the bottom.
          transitionsBuilder: TransitionsBuilders.slideBottom,

          /// DurationInMilliseconds specifies the duration of the transition animation in milliseconds.
          /// The value of 400 indicates a duration of 400 milliseconds for the slide animation.
          durationInMilliseconds: 400,
        ),

        /// CustomRoute is used to define a custom route configuration.
        /// a route with the path '/register/signup' is configured to navigate to the 'SignUpRoute' page.
        CustomRoute(
          path: '/register/signup',
          page: SignUpRoute.page,

          /// TransitionsBuilder determines how the page transition animation should be performed.
          /// In this case, the 'slideBottom' transition is used, meaning the new page will slide up from the bottom.
          transitionsBuilder: TransitionsBuilders.slideBottom,

          /// DurationInMilliseconds specifies the duration of the transition animation in milliseconds.
          /// The value of 400 indicates a duration of 400 milliseconds for the slide animation.
          durationInMilliseconds: 400,
        ),

         /// CustomRoute is used to define a custom route configuration.
        /// a route with the path '/password-recovey' is configured to navigate to the 'PassWordRecoveryRoute' page.
        CustomRoute(
          path: '/password-recovey',
          page: PassWordRecoveryRoute.page,

          /// TransitionsBuilder determines how the page transition animation should be performed.
          /// In this case, the 'slideBottom' transition is used, meaning the new page will slide up from the bottom.
          transitionsBuilder: TransitionsBuilders.slideBottom,

          /// DurationInMilliseconds specifies the duration of the transition animation in milliseconds.
          /// The value of 400 indicates a duration of 400 milliseconds for the slide animation.
          durationInMilliseconds: 400,
        ),
      ];
}
