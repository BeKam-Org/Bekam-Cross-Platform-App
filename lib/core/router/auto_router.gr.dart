// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:bekam/presentation/screens/on_boarding/onboarding.dart' as _i2;
import 'package:bekam/trial.dart' as _i1;
import 'package:flutter/material.dart' as _i4;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreen(),
      );
    },
    OnBoardingRoute.name: (routeData) {
      final args = routeData.argsAs<OnBoardingRouteArgs>(
          orElse: () => const OnBoardingRouteArgs());
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.OnBoardingPage(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute({List<_i3.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.OnBoardingPage]
class OnBoardingRoute extends _i3.PageRouteInfo<OnBoardingRouteArgs> {
  OnBoardingRoute({
    _i4.Key? key,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          OnBoardingRoute.name,
          args: OnBoardingRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const _i3.PageInfo<OnBoardingRouteArgs> page =
      _i3.PageInfo<OnBoardingRouteArgs>(name);
}

class OnBoardingRouteArgs {
  const OnBoardingRouteArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'OnBoardingRouteArgs{key: $key}';
  }
}
