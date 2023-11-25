// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

// 📦 Package imports:
import 'package:auto_route/auto_route.dart' as _i11;

// 🌎 Project imports:
import 'package:bekam/presentation/screens/cart/cart_page.dart' as _i1;
import 'package:bekam/presentation/screens/home_nav/home_nav_page.dart' as _i3;
import 'package:bekam/presentation/screens/home_page/home_page.dart' as _i4;
import 'package:bekam/presentation/screens/on_boarding/onboarding.dart' as _i6;
import 'package:bekam/presentation/screens/order/order_page.dart' as _i7;
import 'package:bekam/trial.dart' as _i10;

import 'package:bekam/presentation/screens/favourite/favourite_page.dart'
    as _i2;
import 'package:bekam/presentation/screens/register/login/login_page.dart'
    as _i5;
import 'package:bekam/presentation/screens/register/password_recovery/password_recovery.dart'
    as _i8;
import 'package:bekam/presentation/screens/register/signup/signup_page.dart'
    as _i9;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    CartRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CartPage(),
      );
    },
    FavouriteRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.FavouritePage(),
      );
    },
    HomeNavRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeNavPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginPage(),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.OnBoardingPage(),
      );
    },
    OrderRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.OrderPage(),
      );
    },
    PasswordRecoveryRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.PasswordRecoveryPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SignUpPage(),
      );
    },
    TrialRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.TrialScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.CartPage]
class CartRoute extends _i11.PageRouteInfo<void> {
  const CartRoute({List<_i11.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.FavouritePage]
class FavouriteRoute extends _i11.PageRouteInfo<void> {
  const FavouriteRoute({List<_i11.PageRouteInfo>? children})
      : super(
          FavouriteRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavouriteRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeNavPage]
class HomeNavRoute extends _i11.PageRouteInfo<void> {
  const HomeNavRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HomeNavRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeNavRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i11.PageRouteInfo<void> {
  const LoginRoute({List<_i11.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.OnBoardingPage]
class OnBoardingRoute extends _i11.PageRouteInfo<void> {
  const OnBoardingRoute({List<_i11.PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.OrderPage]
class OrderRoute extends _i11.PageRouteInfo<void> {
  const OrderRoute({List<_i11.PageRouteInfo>? children})
      : super(
          OrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i8.PasswordRecoveryPage]
class PasswordRecoveryRoute extends _i11.PageRouteInfo<void> {
  const PasswordRecoveryRoute({List<_i11.PageRouteInfo>? children})
      : super(
          PasswordRecoveryRoute.name,
          initialChildren: children,
        );

  static const String name = 'PasswordRecoveryRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SignUpPage]
class SignUpRoute extends _i11.PageRouteInfo<void> {
  const SignUpRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.TrialScreen]
class TrialRoute extends _i11.PageRouteInfo<void> {
  const TrialRoute({List<_i11.PageRouteInfo>? children})
      : super(
          TrialRoute.name,
          initialChildren: children,
        );

  static const String name = 'TrialRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}
