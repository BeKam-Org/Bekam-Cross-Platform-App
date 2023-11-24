// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import 'package:bekam/core/di/get_initializer.dart';
import 'package:bekam/core/helper/custom_scroll_behaviour.dart';
import 'package:bekam/core/localization/app_localization_delegate.dart';
import 'package:bekam/core/router/auto_router.dart';
import 'package:bekam/data/business_logic/set_menu/set_menu_get_cubit.dart';

/// The root widget for the application.
class SelectCheapApp extends StatelessWidget {
  const SelectCheapApp({super.key});

  /// Builds the root of the application widget tree.
  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    //Set the fit size
    return ScreenUtilInit(
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) => MultiBlocProvider(
        providers: [
          BlocProvider<SetMenuGetCubit>(
            create: (context) => getIt<SetMenuGetCubit>(),
          )
        ],
        child: MaterialApp.router(
          /// Title displayed in the operating system's task switcher.
          title: 'select.cheap',

          /// Controls the display of a banner at the top right of the app's UI in debug mode.
          debugShowCheckedModeBanner: false,

          /// Configures the app's localization support.
          localizationsDelegates: const [
            AppLocalizationDelegate(),
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],

          /// Parses route information to route data.
          routeInformationParser: appRouter.defaultRouteParser(),

          /// Specifies the supported locales for the app.
          supportedLocales: const [
            Locale(
              'en',
              '',
            ),
            Locale(
              'ar',
              '',
            ),
          ],

          /// Customizes scrolling behavior using CustomScrollBehaviour.
          scrollBehavior: CustomScrollBehaviour(),

          /// Delegates the routing handling to the appRouter.
          routerDelegate: appRouter.delegate(),
        ),
      ),
    );
  }
}
