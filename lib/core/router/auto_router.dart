// 📦 Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:bekam/presentation/screens/on_boarding/onboarding.dart';
import 'package:flutter/material.dart';

// 🌎 Project imports:
part 'auto_router.gr.dart';

/// Configures and manages the app's routing using AutoRoute.
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  /// Overrides the routes method to define app routes.
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: OnBoardingRoute.page,
          initial: true,
        ),
      ];
}
